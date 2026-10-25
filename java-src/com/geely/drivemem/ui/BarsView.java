package com.geely.drivemem.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.View;

import com.geely.drivemem.util.Style;

/** A small bar chart: one bar per period, the latest one highlighted, value labels on top. */
public class BarsView extends View {
    public interface Formatter { String format(double v); }

    private double[] values = new double[0];
    private String[] labels = new String[0];
    private Formatter fmt;
    private final Paint bar = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint base = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF rect = new RectF();
    private final String emptyText;

    public BarsView(Context c, Formatter fmt, String emptyText) {
        super(c);
        this.fmt = fmt;
        this.emptyText = emptyText;
        text.setTypeface(Typeface.DEFAULT_BOLD);
        text.setTextAlign(Paint.Align.CENTER);
        base.setStrokeWidth(Style.dp(c, 1));
    }

    public void setData(double[] values, String[] labels) {
        this.values = values == null ? new double[0] : values;
        this.labels = labels == null ? new String[0] : labels;
        invalidate();
    }

    @Override protected void onDraw(Canvas cv) {
        Context c = getContext();
        int w = getWidth(), h = getHeight();
        int n = values.length;
        float labelSp = Style.dp(c, 13), valueSp = Style.dp(c, 13);
        float labelH = labelSp + Style.dp(c, 8);
        float topPad = valueSp + Style.dp(c, 8);
        float chartBottom = h - labelH;
        double max = 0;
        for (double v : values) if (v > max) max = v;
        if (n == 0 || max <= 0) {
            text.setColor(Style.TEXT_DIM);
            text.setTextSize(Style.dp(c, 15));
            text.setTypeface(Typeface.DEFAULT);
            cv.drawText(emptyText, w / 2f, h / 2f, text);
            text.setTypeface(Typeface.DEFAULT_BOLD);
            return;
        }
        float slot = w / (float) n;
        float barW = Math.min(slot * 0.62f, Style.dp(c, 54));
        base.setColor((Style.TEXT_DIM & 0x00FFFFFF) | 0x55000000);
        cv.drawLine(0, chartBottom, w, chartBottom, base);
        boolean roomForValues = slot >= Style.dp(c, 44);
        float labelW = Style.dp(c, 44);
        int labelStep = Math.max(1, (int) Math.ceil(labelW / slot));
        for (int i = 0; i < n; i++) {
            boolean last = i == n - 1;
            float cx = slot * i + slot / 2f;
            float bh = (float) (values[i] / max) * (chartBottom - topPad);
            if (values[i] > 0 && bh < Style.dp(c, 3)) bh = Style.dp(c, 3);
            rect.set(cx - barW / 2f, chartBottom - bh, cx + barW / 2f, chartBottom);
            bar.setColor(last ? Style.ACCENT : ((Style.TEXT_DIM & 0x00FFFFFF) | 0x88000000));
            if (bh > 0) cv.drawRoundRect(rect, Style.dp(c, 5), Style.dp(c, 5), bar);
            if ((roomForValues || last) && values[i] > 0) {
                text.setColor(last ? Style.TEXT : Style.TEXT_DIM);
                text.setTextSize(valueSp);
                cv.drawText(fmt.format(values[i]), cx, chartBottom - bh - Style.dp(c, 6), text);
            }
            if (i < labels.length && ((n - 1 - i) % labelStep == 0)) {
                text.setColor(last ? Style.TEXT : Style.TEXT_DIM);
                text.setTextSize(labelSp);
                cv.drawText(labels[i], cx, h - Style.dp(c, 4), text);
            }
        }
    }
}
