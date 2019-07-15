.class public final Lcom/tencent/bugly/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Z

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field private static d:Lcom/tencent/bugly/proguard/p;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 3

    .prologue
    .line 66
    const-class v1, Lcom/tencent/bugly/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/b;->e:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    monitor-exit v1

    return-void

    .line 70
    :cond_0
    if-nez p0, :cond_1

    .line 71
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "[init] context of init() is null, check it."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 84
    if-nez v2, :cond_3

    .line 85
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_3
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Z

    invoke-static {p0, v2, v0, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 12

    .prologue
    .line 102
    const-class v7, Lcom/tencent/bugly/b;

    monitor-enter v7

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/b;->e:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit v7

    return-void

    .line 106
    :cond_0
    if-nez p0, :cond_1

    .line 107
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "[init] context is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 111
    :cond_1
    if-nez p1, :cond_2

    .line 112
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/b;->e:Z

    .line 116
    if-eqz p2, :cond_3

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/b;->c:Z

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/x;->b:Z

    .line 120
    const-string v0, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 122
    const-string v0, "--------------------------------------------------------------------------------------------"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 124
    const-string v0, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 126
    const-string v0, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    const-string v0, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 130
    const-string v0, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    const-string v0, "--------------------------------------------------------------------------------------------"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 133
    const-string v0, "[init] Open debug mode of Bugly."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 136
    :cond_3
    const-string v0, "[init] Bugly version: v%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "2.6.6"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 137
    const-string v0, " crash report start initializing..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    const-string v0, "[init] Bugly start initializing..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const-string v0, "[init] Bugly complete version: v%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "2.6.6"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    .line 144
    invoke-static {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v9

    .line 146
    invoke-virtual {v9}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    .line 147
    invoke-static {v8}, Lcom/tencent/bugly/proguard/y;->a(Landroid/content/Context;)V

    .line 148
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/p;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    .line 149
    invoke-static {v8}, Lcom/tencent/bugly/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/u;

    .line 150
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v8, v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v10

    .line 151
    invoke-static {v8}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v11

    .line 154
    invoke-static {v9}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    goto/16 :goto_0

    .line 159
    :cond_4
    invoke-virtual {v9, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;)V

    .line 160
    const-string v0, "[param] Set APP ID:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 162
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_12

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appVersion %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    iput-object v0, v9, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    const-string v0, "[param] Set App version: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isReplaceOldChannel()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_11

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appChannel %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v6, v0

    :goto_2
    sget-object v0, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    const/16 v1, 0x22c

    const-string v2, "app_channel"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    iput-object v6, v9, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_6
    :goto_3
    const-string v0, "[param] Set App channel: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_4
    :try_start_4
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_10

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appPackageName %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_5
    iput-object v0, v9, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string v0, "[param] Set App package: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_f

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceId %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {v9, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v1, "s[param] Set device ID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isUploadProcess()Z

    move-result v0

    iput-boolean v0, v9, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isBuglyLogUpload()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z

    .line 164
    :cond_a
    invoke-static {v8, p3}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_d

    .line 169
    :try_start_5
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    iget v0, v0, Lcom/tencent/bugly/a;->id:I

    invoke-virtual {v11, v0}, Lcom/tencent/bugly/proguard/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 170
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    invoke-virtual {v0, v8, p2, p3}, Lcom/tencent/bugly/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :cond_b
    :goto_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 162
    :cond_c
    :try_start_6
    sget-object v0, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    const/16 v1, 0x22c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "app_channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v9, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    sget-boolean v1, Lcom/tencent/bugly/b;->c:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 172
    :catch_1
    move-exception v0

    .line 173
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 180
    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    .line 181
    :goto_9
    invoke-virtual {v10, v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(J)V

    .line 183
    const-string v0, "[init] Bugly initialization finished."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 180
    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_f
    move-object v0, v1

    goto/16 :goto_6

    :cond_10
    move-object v0, v1

    goto/16 :goto_5

    :cond_11
    move-object v6, v1

    goto/16 :goto_2

    :cond_12
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/a;)V
    .locals 2

    .prologue
    .line 280
    const-class v1, Lcom/tencent/bugly/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    monitor-exit v1

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/common/info/a;)Z
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "bugly"

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
