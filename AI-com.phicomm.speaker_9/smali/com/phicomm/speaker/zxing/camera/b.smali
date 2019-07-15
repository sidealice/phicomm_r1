.class final Lcom/phicomm/speaker/zxing/camera/b;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Point;

.field private e:Landroid/graphics/Point;

.field private f:Landroid/graphics/Point;

.field private g:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V
    .locals 1

    .line 242
    invoke-static {p2}, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    move-result-object p2

    sget-object v0, Lcom/phicomm/speaker/zxing/camera/FrontLightMode;->ON:Lcom/phicomm/speaker/zxing/camera/FrontLightMode;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 243
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/zxing/camera/b;->a(Landroid/hardware/Camera$Parameters;ZZ)V

    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 2

    .line 247
    invoke-static {p1, p2}, Lcom/phicomm/speaker/zxing/camera/c;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 248
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez p3, :cond_0

    const-string p3, "preferences_disable_exposure"

    const/4 v1, 0x1

    .line 249
    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_0

    .line 250
    invoke-static {p1, p2}, Lcom/phicomm/speaker/zxing/camera/c;->b(Landroid/hardware/Camera$Parameters;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Point;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/b;->e:Landroid/graphics/Point;

    return-object v0
.end method

.method a(Landroid/hardware/Camera;Z)V
    .locals 2

    .line 236
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0, v0, p2, v1}, Lcom/phicomm/speaker/zxing/camera/b;->a(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 238
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method a(Lcom/phicomm/speaker/zxing/camera/open/a;)V
    .locals 9

    .line 61
    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 63
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x168

    packed-switch v2, :pswitch_data_0

    .line 82
    rem-int/lit8 v5, v2, 0x5a

    if-nez v5, :cond_0

    add-int/2addr v2, v4

    .line 83
    rem-int/2addr v2, v4

    goto :goto_1

    :pswitch_0
    const/16 v2, 0x10e

    goto :goto_1

    :pswitch_1
    const/16 v2, 0xb4

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x5a

    goto :goto_1

    :goto_0
    :pswitch_3
    move v2, v3

    goto :goto_1

    .line 86
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad rotation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 88
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    const-string v5, "CameraConfiguration"

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/camera/open/a;->c()I

    move-result v5

    const-string v6, "CameraConfiguration"

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/camera/open/a;->b()Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

    move-result-object v6

    sget-object v7, Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;->FRONT:Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

    if-ne v6, v7, :cond_1

    rsub-int v5, v5, 0x168

    .line 99
    rem-int/2addr v5, v4

    const-string v6, "CameraConfiguration"

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Front camera overriden to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    .line 103
    rem-int/2addr v5, v4

    iput v5, p0, Lcom/phicomm/speaker/zxing/camera/b;->c:I

    const-string v2, "CameraConfiguration"

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final display orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/phicomm/speaker/zxing/camera/b;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/camera/open/a;->b()Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

    move-result-object p1

    sget-object v2, Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;->FRONT:Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

    if-ne p1, v2, :cond_2

    const-string p1, "CameraConfiguration"

    const-string v2, "Compensating rotation for front camera"

    .line 107
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->c:I

    rsub-int p1, p1, 0x168

    rem-int/2addr p1, v4

    iput p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->b:I

    goto :goto_2

    .line 110
    :cond_2
    iget p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->c:I

    iput p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->b:I

    :goto_2
    const-string p1, "CameraConfiguration"

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clockwise rotation from display to camera: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/phicomm/speaker/zxing/camera/b;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 115
    invoke-virtual {v1, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 116
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    const-string p1, "CameraConfiguration"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen resolution in current orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 122
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 124
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_3

    .line 125
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 126
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 128
    :cond_3
    invoke-static {v0, p1}, Lcom/phicomm/speaker/zxing/camera/c;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->e:Landroid/graphics/Point;

    const-string v1, "CameraConfiguration"

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera resolution: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/phicomm/speaker/zxing/camera/b;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v0, p1}, Lcom/phicomm/speaker/zxing/camera/c;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    const-string p1, "CameraConfiguration"

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Best available preview size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v3

    .line 134
    :goto_3
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v0, v2, :cond_5

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    if-ne p1, v1, :cond_6

    .line 137
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->g:Landroid/graphics/Point;

    goto :goto_5

    .line 139
    :cond_6
    new-instance p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/b;->g:Landroid/graphics/Point;

    :goto_5
    const-string p1, "CameraConfiguration"

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview size on screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->g:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/phicomm/speaker/zxing/camera/open/a;Z)V
    .locals 5

    .line 146
    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "CameraConfiguration"

    const-string p2, "Device error: no camera parameters are available. Proceeding without configuration."

    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "CameraConfiguration"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial camera parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const-string v1, "CameraConfiguration"

    const-string v2, "In camera config safe mode -- most settings will not be honored"

    .line 157
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    invoke-direct {p0, v0, v1, p2}, Lcom/phicomm/speaker/zxing/camera/b;->a(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V

    const-string v2, "preferences_auto_focus"

    const/4 v3, 0x1

    .line 166
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "preferences_disable_continuous_focus"

    .line 167
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 164
    invoke-static {v0, v2, v4, p2}, Lcom/phicomm/speaker/zxing/camera/c;->a(Landroid/hardware/Camera$Parameters;ZZZ)V

    if-nez p2, :cond_4

    const-string p2, "preferences_invert_scan"

    const/4 v2, 0x0

    .line 171
    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    invoke-static {v0}, Lcom/phicomm/speaker/zxing/camera/c;->e(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    const-string p2, "preferences_disable_barcode_scene_mode"

    .line 175
    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    .line 176
    invoke-static {v0}, Lcom/phicomm/speaker/zxing/camera/c;->d(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    const-string p2, "preferences_disable_metering"

    .line 179
    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 180
    invoke-static {v0}, Lcom/phicomm/speaker/zxing/camera/c;->c(Landroid/hardware/Camera$Parameters;)V

    .line 181
    invoke-static {v0}, Lcom/phicomm/speaker/zxing/camera/c;->a(Landroid/hardware/Camera$Parameters;)V

    .line 182
    invoke-static {v0}, Lcom/phicomm/speaker/zxing/camera/c;->b(Landroid/hardware/Camera$Parameters;)V

    .line 187
    :cond_4
    iget-object p2, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/16 p2, 0x5a

    .line 191
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 193
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 195
    iget-object p2, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    if-eq p2, v0, :cond_6

    :cond_5
    const-string p2, "CameraConfiguration"

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera said it supported preview size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but after setting it, preview size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p2, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 199
    iget-object p2, p0, Lcom/phicomm/speaker/zxing/camera/b;->f:Landroid/graphics/Point;

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_6
    return-void
.end method

.method a(Landroid/hardware/Camera;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "on"

    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "torch"

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method b()Landroid/graphics/Point;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/b;->d:Landroid/graphics/Point;

    return-object v0
.end method
