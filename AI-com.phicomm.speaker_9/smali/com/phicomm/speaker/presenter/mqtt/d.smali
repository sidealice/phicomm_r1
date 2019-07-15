.class public Lcom/phicomm/speaker/presenter/mqtt/d;
.super Ljava/lang/Object;
.source "MqttMessageWatcher.java"


# static fields
.field private static volatile a:Lcom/phicomm/speaker/presenter/mqtt/d;


# instance fields
.field private b:Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;

.field private c:Landroid/content/Context;

.field private d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/phicomm/speaker/c/g;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->e:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->f:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/d$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/mqtt/d$1;-><init>(Lcom/phicomm/speaker/presenter/mqtt/d;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->g:Lcom/phicomm/speaker/c/g;

    .line 120
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->c:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->b:Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;

    .line 122
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    return-void
.end method

.method public static a()Lcom/phicomm/speaker/presenter/mqtt/d;
    .locals 2

    .line 126
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/d;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    if-nez v0, :cond_1

    .line 127
    const-class v0, Lcom/phicomm/speaker/presenter/mqtt/d;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/phicomm/speaker/presenter/mqtt/d;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-direct {v1}, Lcom/phicomm/speaker/presenter/mqtt/d;-><init>()V

    sput-object v1, Lcom/phicomm/speaker/presenter/mqtt/d;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    .line 131
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 133
    :cond_1
    :goto_0
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/d;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/mqtt/d;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->e:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/c/g;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->b:Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "MqttMessageWatcher"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserStartOtaing userStartOtaing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->e:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->b:Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->b()V

    return-void
.end method

.method public b(Lcom/phicomm/speaker/c/g;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MqttMessageWatcher"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeRomUpdate deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->g:Lcom/phicomm/speaker/c/g;

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->a(Ljava/lang/String;Lcom/phicomm/speaker/c/g;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "MqttMessageWatcher"

    const-string v1, "unSubscribeRomUpdate"

    .line 159
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d;->d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->e()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/d;->b(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/d;->c()V

    .line 180
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/d;->b()V

    return-void
.end method
