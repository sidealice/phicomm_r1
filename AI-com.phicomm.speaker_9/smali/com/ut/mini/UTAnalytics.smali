.class public Lcom/ut/mini/UTAnalytics;
.super Ljava/lang/Object;
.source "UTAnalytics.java"


# static fields
.field private static a:Lcom/ut/mini/UTAnalytics;


# instance fields
.field private a:Lcom/ut/mini/UTTracker;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->u:Ljava/util/Map;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 74
    new-instance v0, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;

    invoke-direct {v0}, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;-><init>()V

    .line 75
    invoke-static {}, Lcom/ut/mini/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/plugin/UTPluginMgr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ut/mini/plugin/UTPluginMgr;->registerPlugin(Lcom/ut/mini/plugin/UTPlugin;Z)V

    .line 76
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/base/UTMIVariables;->setUTMI1010_2001EventInstance(Lcom/ut/mini/sdkevents/UTMI1010_2001Event;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;

    invoke-direct {v0}, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;-><init>()V

    .line 79
    invoke-static {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V

    .line 80
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/base/UTMIVariables;->setUTMI1010_2001EventInstance(Lcom/ut/mini/sdkevents/UTMI1010_2001Event;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/UTAnalytics;
    .locals 2

    const-class v0, Lcom/ut/mini/UTAnalytics;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTAnalytics;

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lcom/ut/mini/UTAnalytics;

    invoke-direct {v1}, Lcom/ut/mini/UTAnalytics;-><init>()V

    sput-object v1, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTAnalytics;

    .line 156
    :cond_0
    sget-object v1, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 152
    monitor-exit v0

    throw v1
.end method

.method private o()Z
    .locals 1

    :try_start_0
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    .line 140
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getDefaultTracker()Lcom/ut/mini/UTTracker;
    .locals 2

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_1

    const-string v0, "getDefaultTracker error"

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    .line 169
    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;
    .locals 2

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 208
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 209
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->p(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->u:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    const-string p1, "getTracker"

    const-string v0, "TrackId is null."

    .line 214
    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    .line 216
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 203
    monitor-exit p0

    throw p1
.end method

.method public setAppApplicationInstance(Landroid/app/Application;)V
    .locals 5

    .line 110
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->setAppApplicationInstance(Landroid/app/Application;)V

    .line 112
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->init(Landroid/app/Application;)V

    if-eqz p1, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.alibaba.apmplus.app_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.alibaba.apmplus.app_secret"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.alibaba.apmplus.authcode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.alibaba.apmplus.channel"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->o()Z

    move-result v3

    invoke-static {v3, v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 195
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 224
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->setContext(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/internal/UTTeamWork;->initialized()V

    :cond_0
    return-void
.end method

.method public setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "setRequestAuthentication"

    const-string v1, "Fatal Error,pRequestAuth must not be null."

    .line 181
    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    :cond_0
    instance-of v0, p1, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 184
    invoke-interface {p1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    invoke-virtual {p1}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getAppSecret()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 186
    invoke-interface {p1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    invoke-virtual {p1}, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;->getAuthCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public turnOffAutoPageTrack()V
    .locals 1

    .line 299
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper;->turnOffAutoPageTrack()V

    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    .line 246
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->turnOnDebug()V

    return-void
.end method

.method public updateSessionProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c;->a()Ljava/util/Map;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 291
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/mtl/log/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 255
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/log/b;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 9

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    new-instance v8, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string v2, "UT"

    const/16 v3, 0x3ee

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    invoke-virtual {v8}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p1, "Record userRegister event error"

    const-string v0, "Fatal Error,must call setRequestAuthentication method first."

    .line 272
    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "userRegister"

    const-string v0, "Fatal Error,usernick can not be null or empty!"

    .line 275
    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
