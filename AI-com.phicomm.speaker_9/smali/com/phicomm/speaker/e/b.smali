.class public Lcom/phicomm/speaker/e/b;
.super Ljava/lang/Object;
.source "UniSelfDefineManager.java"


# static fields
.field private static volatile a:Lcom/phicomm/speaker/e/b;


# instance fields
.field private b:Lcom/phicomm/speaker/e/a/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/phicomm/speaker/e/a/a;

    invoke-direct {v0}, Lcom/phicomm/speaker/e/a/a;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/e/b;->b:Lcom/phicomm/speaker/e/a/a;

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->e()V

    return-void
.end method

.method public static a()Lcom/phicomm/speaker/e/b;
    .locals 2

    .line 55
    sget-object v0, Lcom/phicomm/speaker/e/b;->a:Lcom/phicomm/speaker/e/b;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/phicomm/speaker/e/b;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/phicomm/speaker/e/b;->a:Lcom/phicomm/speaker/e/b;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/phicomm/speaker/e/b;

    invoke-direct {v1}, Lcom/phicomm/speaker/e/b;-><init>()V

    sput-object v1, Lcom/phicomm/speaker/e/b;->a:Lcom/phicomm/speaker/e/b;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/phicomm/speaker/e/b;->a:Lcom/phicomm/speaker/e/b;

    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/b;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/e/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "udid is null."

    const/4 v2, 0x0

    .line 364
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_0
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p1, p3}, Lcom/unisound/lib/UnisDeviceAssistant;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/e/b;)Lcom/phicomm/speaker/e/a/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/phicomm/speaker/e/b;->b:Lcom/phicomm/speaker/e/a/a;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/unisound/lib/self/mgr/SelfContractMgr;->getInstance()Lcom/unisound/lib/self/mgr/SelfContractMgr;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/b$1;-><init>(Lcom/phicomm/speaker/e/b;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/self/mgr/SelfContractMgr;->setSelfContractListener(Lcom/unisound/lib/self/listener/ISelfContractCallBack;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 375
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/e/c/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkDeviceStateManager"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "ttsPlayer"

    .line 199
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "modifyTtsPlayer"

    .line 200
    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/e/b;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(ZLcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string v1, "isLighting"

    .line 296
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "modifyDormantLightStatus"

    .line 297
    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/e/b;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b()Lcom/phicomm/speaker/e/a/a;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/e/b;->b:Lcom/phicomm/speaker/e/a/a;

    return-object v0
.end method

.method public b(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getDeviceInfoManager"

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, v1, v0, p1}, Lcom/phicomm/speaker/e/b;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "ttsSpeaker"

    .line 214
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "auditionTtsSpeaker"

    .line 215
    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/e/b;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public c(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getLightingStatusManager"

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, v1, v0, p1}, Lcom/phicomm/speaker/e/b;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "alarmFile"

    .line 233
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "audition"

    .line 234
    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/e/b;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/e/b;->b:Lcom/phicomm/speaker/e/a/a;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/a/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 306
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->openDormantMode(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "wakeUpWord"

    .line 257
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "modifyWakeUpWord"

    .line 258
    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/e/b;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/e/b;->b:Lcom/phicomm/speaker/e/a/a;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/a/a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 315
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->closeDormantMode(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/device/WakeupWordBean;",
            ">;)V"
        }
    .end annotation

    .line 277
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/unisound/lib/UnisDeviceAssistant;->getWakeupWordScore(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public f(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->getDormantStatus(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public g(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 334
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->getAmbientLightStatus(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public h(Lcom/phicomm/speaker/e/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 343
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->setAmbientLightStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public i(Lcom/phicomm/speaker/e/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 352
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-direct {p0}, Lcom/phicomm/speaker/e/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->setAmbientLightStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method
