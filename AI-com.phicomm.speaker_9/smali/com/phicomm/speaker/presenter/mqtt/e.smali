.class public Lcom/phicomm/speaker/presenter/mqtt/e;
.super Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.source "RecoveryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/presenter/mqtt/e$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Lcom/phicomm/speaker/views/LoadingNormalDialog;

.field private j:Lcom/phicomm/speaker/presenter/mqtt/e$a;

.field private k:Lcom/phicomm/speaker/model/d;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/mqtt/e$a;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;-><init>(Landroid/content/Context;)V

    const-string p1, "$events/broker/%s/factory_reset"

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->c:Ljava/lang/String;

    const-string p1, "$events/broker/%s/unbinded/+"

    .line 49
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->d:Ljava/lang/String;

    const-string p1, "$events/broker/%s/unbinded/"

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->e:Ljava/lang/String;

    const/16 p1, 0x7530

    .line 54
    iput p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->f:I

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->g:Landroid/os/Handler;

    .line 73
    new-instance p1, Lcom/phicomm/speaker/model/d;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/d;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->k:Lcom/phicomm/speaker/model/d;

    .line 74
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->j:Lcom/phicomm/speaker/presenter/mqtt/e$a;

    .line 75
    new-instance p1, Lcom/phicomm/speaker/presenter/mqtt/e$1;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/presenter/mqtt/e$1;-><init>(Lcom/phicomm/speaker/presenter/mqtt/e;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/mqtt/e;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/mqtt/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "$events/broker/%s/unbinded/+"

    const/4 v1, 0x1

    .line 117
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$events/broker/%s/unbinded/"

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->m:Ljava/lang/String;

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbind subscribe_topic = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 159
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v0

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/mqtt/e$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/mqtt/e$2;-><init>(Lcom/phicomm/speaker/presenter/mqtt/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    .line 171
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/mqtt/e$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/mqtt/e$3;-><init>(Lcom/phicomm/speaker/presenter/mqtt/e;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/d;->c(Lcom/phicomm/speaker/e/c/d;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/mqtt/e;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/e;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/e;->g()V

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->j:Lcom/phicomm/speaker/presenter/mqtt/e$a;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->j:Lcom/phicomm/speaker/presenter/mqtt/e$a;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/mqtt/RecoveryPublishBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$events/broker/%s/factory_reset"

    const/4 v1, 0x1

    .line 112
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/mqtt/e;)Lcom/phicomm/speaker/model/d;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->k:Lcom/phicomm/speaker/model/d;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/mqtt/e;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/e;->g()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/mqtt/e;)Lcom/phicomm/speaker/presenter/mqtt/e$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->j:Lcom/phicomm/speaker/presenter/mqtt/e$a;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->i:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/phicomm/speaker/views/LoadingNormalDialog;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->a:Landroid/content/Context;

    const v2, 0x7f0f0133

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/LoadingNormalDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->i:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->i:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->show()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->i:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->i:Lcom/phicomm/speaker/views/LoadingNormalDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a()V

    return-void
.end method

.method protected a(Lcom/phicomm/speaker/d/a/a;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->b()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/p;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/phicomm/speaker/bean/MqttUnbind;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/MqttUnbind;

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttUnbind;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttUnbind;->getUnbind_by_other()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string v1, "CLOUD_ACCOUNT_UID"

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/e;->b()V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/mqtt/RecoveryPublishBean;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/e;->f()V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/e;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 105
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->l:Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->a(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->h:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
