.class public Lcom/baidu/location/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static c:Lcom/baidu/location/a/m;


# instance fields
.field private a:[F

.field private b:Landroid/hardware/SensorManager;

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->e:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->f:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/location/a/m;
    .locals 2

    const-class v1, Lcom/baidu/location/a/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/m;->c:Lcom/baidu/location/a/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/m;

    invoke-direct {v0}, Lcom/baidu/location/a/m;-><init>()V

    sput-object v0, Lcom/baidu/location/a/m;->c:Lcom/baidu/location/a/m;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/m;->c:Lcom/baidu/location/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/m;->e:Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/a/m;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/baidu/location/a/m;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/m;->e:Z

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/a/m;->d:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/baidu/location/a/m;->a:[F

    iget-object v0, p0, Lcom/baidu/location/a/m;->a:[F

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/m;->a:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x0

    aget v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/location/a/m;->d:F

    iget v0, p0, Lcom/baidu/location/a/m;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/a/m;->d:F

    float-to-double v0, v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/location/a/m;->d:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v2, p0, Lcom/baidu/location/a/m;->d:F

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/baidu/location/a/m;->d:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
