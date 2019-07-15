.class public Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;
.super Ljava/lang/Object;


# static fields
.field public static final APP_MONITOR:I = 0x1

.field public static final ENV_DAILY:I = 0x3

.field public static final ENV_ONLINE:I = 0x1

.field public static final ENV_PRE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FeedbackAPI"

.field public static final UT_ANALYTICS:I = 0x2

.field public static activity:Landroid/app/Activity; = null

.field public static customWebviewFragment:Lcom/alibaba/sdk/android/feedback/windvane/d; = null

.field private static isUTInit:Z = false

.field public static leaveCallback:Ljava/util/concurrent/Callable; = null

.field private static lock:Ljava/lang/Object; = null

.field private static mConfig:Ljava/lang/String; = null

.field public static mErrorManager:Lcom/alibaba/sdk/android/feedback/impl/a; = null

.field public static mExtInfo:Lorg/json/JSONObject; = null

.field public static type:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/impl/a;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/impl/a;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mErrorManager:Lcom/alibaba/sdk/android/feedback/impl/a;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mExtInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mConfig:Ljava/lang/String;

    return-object v0
.end method

.method public static addErrorCallback(Lcom/alibaba/sdk/android/feedback/util/FeedbackErrorCallback;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mErrorManager:Lcom/alibaba/sdk/android/feedback/impl/a;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/feedback/impl/a;->a(Lcom/alibaba/sdk/android/feedback/util/FeedbackErrorCallback;)V

    return-void
.end method

.method public static addLeaveCallback(Ljava/util/concurrent/Callable;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->leaveCallback:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public static cleanActivity()V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->activity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public static cleanFeedbackFragment()V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->customWebviewFragment:Lcom/alibaba/sdk/android/feedback/windvane/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->customWebviewFragment:Lcom/alibaba/sdk/android/feedback/windvane/d;

    :cond_0
    return-void
.end method

.method private static commitDAU(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/util/n;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->isUTInit:Z

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/util/n;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->setLogEnabled(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_VERSION:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_FEEDBACK:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-static {p0, v1, v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    return-void
.end method

.method protected static getFeedbackConf(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/feedback/a/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/a/c;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/sdk/android/feedback/a/c;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static getFeedbackFragment()Landroid/support/v4/app/Fragment;
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/feedback/windvane/d;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/windvane/d;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->customWebviewFragment:Lcom/alibaba/sdk/android/feedback/windvane/d;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "URL"

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->customWebviewFragment:Lcom/alibaba/sdk/android/feedback/windvane/d;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/windvane/d;->setArguments(Landroid/os/Bundle;)V

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->customWebviewFragment:Lcom/alibaba/sdk/android/feedback/windvane/d;

    return-object v0
.end method

.method public static getFeedbackUnreadCount(Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;)V
    .locals 3

    sget-boolean v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->isUTInit:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mErrorManager:Lcom/alibaba/sdk/android/feedback/impl/a;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53cd\u9988\u7ec4\u4ef6\u521d\u59cb\u5316\u5931\u8d25, \u7a7a\u6307\u9488"

    sget-object v2, Lcom/alibaba/sdk/android/feedback/util/ErrorCode;->NULL_ERROR:Lcom/alibaba/sdk/android/feedback/util/ErrorCode;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/util/ErrorCode;)V

    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/feedback/a/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/feedback/a/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/feedback/a/c;->a(Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->type:I

    invoke-static {p1, p2, p0, v1}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->utAndSecurityInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/util/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "FeedbackAPI"

    const-string p1, "deviceID is null, fail to init"

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    const-string v2, "FeedbackAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init appkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/feedback/a/b;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/a/b;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alibaba/sdk/android/feedback/a/b;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/a/b;->d(Ljava/lang/String;)V

    const-string p1, "3.1.0"

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/a/b;->e(Ljava/lang/String;)V

    const-string p1, "0"

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/a/b;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->commitDAU(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput p0, Lcom/alibaba/sdk/android/feedback/a;->a:I

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    const-string p0, "FeedbackAPI"

    const-string p1, "context or appkey or appSecret is null, fail to init"

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    sput p3, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->type:I

    invoke-static {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openFeedbackActivity()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->openFeedbackActivity(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static openFeedbackActivity(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 3

    sget-boolean v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->isUTInit:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mErrorManager:Lcom/alibaba/sdk/android/feedback/impl/a;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->n()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u53cd\u9988\u7ec4\u4ef6\u521d\u59cb\u5316\u5931\u8d25, \u7a7a\u6307\u9488\u5f02\u5e38"

    sget-object v1, Lcom/alibaba/sdk/android/feedback/util/ErrorCode;->NULL_ERROR:Lcom/alibaba/sdk/android/feedback/util/ErrorCode;

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/sdk/android/feedback/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/util/ErrorCode;)V

    const-string p0, "openFeedbackFaild"

    const-string p1, "appkey or context is null"

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/feedback/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->cleanFeedbackFragment()V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mConfig:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FeedbackAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use local config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mConfig:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/a/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string v0, "FeedbackAPI"

    const-string v1, "config is empty,get it from network"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/feedback/impl/c;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/impl/c;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->getFeedbackConf(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static setAppExtInfo(Lorg/json/JSONObject;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mExtInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public static setBackIcon(I)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/a/b;->a(I)V

    return-void
.end method

.method public static setDefaultUserContactInfo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/a/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static setEnv(I)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/a/b;->b(I)V

    return-void
.end method

.method public static setFeedbackFragment(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->getFeedbackConf(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static setHistoryTextSize(F)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/a/b;->a(F)V

    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Z)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->setLogEnabled(Z)V

    return-void
.end method

.method public static setTranslucent(Z)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/a/b;->a(Z)V

    return-void
.end method

.method public static setWebViewUrl(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/feedback/a/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method private static utAndSecurityInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V
    .locals 1

    sget-boolean v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->isUTInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->isUTInit:Z

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/util/n;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;I)V

    :cond_0
    return-void
.end method
