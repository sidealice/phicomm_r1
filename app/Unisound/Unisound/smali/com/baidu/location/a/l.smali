.class public Lcom/baidu/location/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/baidu/location/a/l;


# instance fields
.field private c:[F

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/a/l;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/a/l;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->g:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->h:Z

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->h:Z

    goto :goto_0
.end method

.method public static a()Lcom/baidu/location/a/l;
    .locals 2

    sget-object v1, Lcom/baidu/location/a/l;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/l;

    invoke-direct {v0}, Lcom/baidu/location/a/l;-><init>()V

    sput-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->h:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/baidu/location/a/l;->d:I

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public d()F
    .locals 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    iget v3, p0, Lcom/baidu/location/a/l;->d:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    :try_start_2
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/baidu/location/a/l;->c:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/baidu/location/a/l;->d:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/baidu/location/a/l;->d:I

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    int-to-float v0, v2

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/location/a/l;->c:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
