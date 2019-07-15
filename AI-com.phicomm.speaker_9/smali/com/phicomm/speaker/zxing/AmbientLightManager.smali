.class public final Lcom/phicomm/speaker/zxing/AmbientLightManager;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/phicomm/speaker/zxing/camera/d;

.field private c:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->a:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 65
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->b:Lcom/phicomm/speaker/zxing/camera/d;

    .line 67
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->c:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method public a(Lcom/phicomm/speaker/zxing/camera/d;)V
    .locals 2

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->b:Lcom/phicomm/speaker/zxing/camera/d;

    .line 52
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    move-result-object p1

    sget-object v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->AUTO:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->a:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    .line 55
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->c:Landroid/hardware/Sensor;

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->c:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 73
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 74
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->b:Lcom/phicomm/speaker/zxing/camera/d;

    if-eqz v1, :cond_1

    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->b:Lcom/phicomm/speaker/zxing/camera/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/zxing/camera/d;->a(Z)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/AmbientLightManager;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/zxing/camera/d;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
