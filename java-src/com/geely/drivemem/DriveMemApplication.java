package com.geely.drivemem;

import com.geely.drivemem.car.CarActor;
import com.geely.drivemem.sensors.EnergyIntegrator;
import com.geely.drivemem.sensors.TelemetryRollup;
import com.geely.drivemem.sensors.TelemetrySampler;
import com.geely.drivemem.state.CarState;
import com.geely.drivemem.state.ChargeSession;
import com.geely.drivemem.state.ParkSession;
import com.geely.drivemem.state.ParkingState;
import com.geely.drivemem.state.TripSession;
import com.geely.drivemem.state.ValetSession;
import com.geely.drivemem.util.DbMigration;

import android.app.Application;

/** Slim build: only the data engine behind Daily Statistics and Charging history. */
public final class DriveMemApplication extends Application {
    @Override public void onCreate() {
        super.onCreate();
        CarActor.get(this);
        DbMigration.runOnce(this);
        TelemetryRollup.runIfDue(this);
        CarState.ensureSubscribed();
        ChargeSession.ensureSubscribed(this);
        TelemetrySampler.ensureSubscribed(this);
        TripSession.ensureSubscribed(this);
        ParkSession.ensureSubscribed(this);
        ParkingState.ensureSubscribed(this);
        ValetSession.ensureSubscribed(this);
        EnergyIntegrator.ensureSubscribed(this);
    }
}
