.class public Lcom/phicomm/speaker/presenter/mqtt/a;
.super Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.source "CommonConfigPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/presenter/mqtt/a$a;
    }
.end annotation


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

.field private e:Lcom/phicomm/speaker/views/q;

.field private f:I

.field private g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

.field private h:Lcom/phicomm/speaker/presenter/mqtt/a$a;

.field private i:Z

.field private j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:I

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->k:I

    const/4 p1, 0x1

    .line 82
    iput p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->l:I

    const/4 p1, 0x2

    .line 86
    iput p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->m:I

    const/4 p1, 0x3

    .line 90
    iput p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->n:I

    .line 96
    new-instance p1, Lcom/phicomm/speaker/presenter/mqtt/b;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/presenter/mqtt/b;-><init>(Lcom/phicomm/speaker/presenter/mqtt/a;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->p:Ljava/lang/Runnable;

    .line 114
    iput-boolean p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->i:Z

    .line 115
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/mqtt/a;)Lcom/phicomm/speaker/views/q;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->e:Lcom/phicomm/speaker/views/q;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 119
    iput p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->j:I

    .line 120
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->p:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    const v0, 0x7f0f0133

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Lcom/phicomm/speaker/views/LoadingNormalDialog;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/mqtt/a;Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 138
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    const p2, 0x7f0f0178

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->f()V

    return-void

    .line 143
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(I)V

    .line 147
    iput p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->o:I

    .line 148
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->c()V

    const-string v1, "device/%s/volume/change/request"

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "alarm_volume"

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->h:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 347
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->h:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    invoke-interface {p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/a$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->h:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    invoke-interface {p1, p3}, Lcom/phicomm/speaker/presenter/mqtt/a$a;->a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(ILcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_0

    .line 381
    iget p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->o:I

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getSound_effect()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_0

    .line 374
    iget p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->o:I

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getMusic_voluem()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_0

    .line 367
    iget p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->o:I

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getAlarm_volume()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->dismiss()V

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->i:Z

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 393
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 396
    :cond_0
    invoke-super {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a()V

    return-void
.end method

.method protected a(Lcom/phicomm/speaker/d/a/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "device/%s/bind/success/notice"

    const/4 v1, 0x1

    .line 165
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/a;->d(Ljava/lang/String;)V

    .line 166
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->i:Z

    if-nez p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/phicomm/speaker/presenter/mqtt/a$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    const p2, 0x7f0f0178

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 223
    :cond_2
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    const/4 p3, 0x2

    .line 224
    invoke-direct {p0, p3}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(I)V

    .line 225
    iput p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->o:I

    .line 226
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->c()V

    const-string p3, "device/%s/volume/change/request"

    const/4 v0, 0x1

    .line 227
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 228
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "music_volume"

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/presenter/mqtt/a$a;)V
    .locals 6

    .line 268
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    .line 269
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->e:Lcom/phicomm/speaker/views/q;

    if-nez p2, :cond_0

    .line 270
    new-instance p2, Lcom/phicomm/speaker/views/q;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    const v2, 0x7f0f004d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/presenter/mqtt/a$1;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/presenter/mqtt/a$1;-><init>(Lcom/phicomm/speaker/presenter/mqtt/a;)V

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    const v4, 0x7f0f007e

    .line 275
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/phicomm/speaker/presenter/mqtt/a$2;

    invoke-direct {v5, p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/a$2;-><init>(Lcom/phicomm/speaker/presenter/mqtt/a;Ljava/lang/String;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/views/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/c/c;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->e:Lcom/phicomm/speaker/views/q;

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->e:Lcom/phicomm/speaker/views/q;

    iget p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->f:I

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/q;->a(I)V

    .line 284
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->e:Lcom/phicomm/speaker/views/q;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/q;->show()V

    return-void
.end method

.method public a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V
    .locals 3

    .line 178
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->h:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 180
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v1

    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/e/a/a;->d(Ljava/lang/String;)Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getAlarm_volume()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->f:I

    .line 183
    invoke-interface {p2, v1}, Lcom/phicomm/speaker/presenter/mqtt/a$a;->a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    move p1, v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 188
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    const p2, 0x7f0f0178

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->c()V

    if-eqz p1, :cond_3

    .line 196
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(I)V

    .line 198
    :cond_3
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "$phihome/shadow/echo_r1/%s/common_config/get"

    const/4 v1, 0x1

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/a;->d(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method final synthetic b()V
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->f()V

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    const v2, 0x7f0f0179

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a$a;->a(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->i:Z

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;ILcom/phicomm/speaker/presenter/mqtt/a$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->a:Landroid/content/Context;

    const p2, 0x7f0f0178

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 251
    :cond_2
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    const/4 p3, 0x3

    .line 252
    invoke-direct {p0, p3}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(I)V

    .line 253
    iput p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->o:I

    .line 254
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->c()V

    const-string p3, "device/%s/sound_effect/change/request"

    const/4 v0, 0x1

    .line 255
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 256
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "sound_effect"

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCommonConfigEvent(Lcom/phicomm/speaker/a/k;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phi_mqtt_common_config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/k;->b()Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getAlarm_volume()I

    move-result v2

    iput v2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->f:I

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->d:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/k;->c()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->f()V

    .line 310
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    if-eqz p1, :cond_5

    .line 311
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/presenter/mqtt/a$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    iget p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->j:I

    invoke-direct {p0, p1, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ILcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 315
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->f()V

    .line 316
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    if-eqz p1, :cond_5

    .line 317
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a;->g:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    invoke-interface {p1, v1}, Lcom/phicomm/speaker/presenter/mqtt/a$a;->a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/a;->f()V

    if-eqz v0, :cond_3

    .line 326
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    .line 328
    invoke-direct {p0, p1, v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLjava/lang/String;Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 331
    invoke-direct {p0, p1, v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLjava/lang/String;Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    :cond_5
    :goto_0
    return-void
.end method
