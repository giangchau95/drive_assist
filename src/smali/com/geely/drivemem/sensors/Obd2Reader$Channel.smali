.class interface abstract Lcom/geely/drivemem/sensors/Obd2Reader$Channel;
.super Ljava/lang/Object;
.source "Obd2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/drivemem/sensors/Obd2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Channel"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract command(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isConnected()Z
.end method
