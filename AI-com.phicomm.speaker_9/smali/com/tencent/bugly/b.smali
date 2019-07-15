.class public final Lcom/tencent/bugly/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Z = true

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 4

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/b;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "[init] initial Multi-times, ignore this."

    .line 67
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 71
    :try_start_1
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string p1, "[init] context of init() is null, check it."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 74
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    sput-boolean v2, Lcom/tencent/bugly/b;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    .line 83
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 85
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string p1, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_3
    :try_start_4
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->u:Z

    invoke-static {p0, v2, v1, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 22

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-class v4, Lcom/tencent/bugly/b;

    monitor-enter v4

    .line 102
    :try_start_0
    sget-boolean v5, Lcom/tencent/bugly/b;->e:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v1, "[init] initial Multi-times, ignore this."

    .line 103
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v4

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 107
    :try_start_1
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "[init] context is null, check it."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit v4

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 112
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v2, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit v4

    return-void

    :cond_2
    const/4 v7, 0x1

    .line 115
    :try_start_3
    sput-boolean v7, Lcom/tencent/bugly/b;->e:Z

    if-eqz v2, :cond_3

    .line 118
    sput-boolean v7, Lcom/tencent/bugly/b;->c:Z

    .line 119
    sput-boolean v7, Lcom/tencent/bugly/proguard/x;->b:Z

    const-string v8, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    .line 120
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "--------------------------------------------------------------------------------------------"

    .line 122
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    .line 124
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    .line 126
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    .line 128
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    .line 130
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "--------------------------------------------------------------------------------------------"

    .line 131
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "[init] Open debug mode of Bugly."

    .line 133
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    const-string v8, "[init] Bugly version: v%s"

    .line 136
    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "2.6.6"

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, " crash report start initializing..."

    .line 137
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "[init] Bugly start initializing..."

    .line 138
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "[init] Bugly complete version: v%s"

    .line 139
    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "2.6.6"

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 144
    invoke-static {v5}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v8

    .line 146
    invoke-virtual {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    .line 147
    invoke-static {v5}, Lcom/tencent/bugly/proguard/y;->a(Landroid/content/Context;)V

    .line 148
    sget-object v9, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v5, v9}, Lcom/tencent/bugly/proguard/p;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/p;

    move-result-object v9

    sput-object v9, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    .line 149
    invoke-static {v5}, Lcom/tencent/bugly/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/u;

    .line 150
    sget-object v9, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v5, v9}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v9

    .line 151
    invoke-static {v5}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v10

    .line 154
    invoke-static {v8}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 155
    sput-boolean v6, Lcom/tencent/bugly/b;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    monitor-exit v4

    return-void

    .line 159
    :cond_4
    :try_start_4
    invoke-virtual {v8, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;)V

    const-string v11, "[param] Set APP ID:%s"

    .line 160
    new-array v12, v7, [Ljava/lang/Object;

    aput-object v1, v12, v6

    invoke-static {v11, v12}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v3, :cond_f

    .line 162
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v13, 0x3

    const/16 v14, 0x64

    if-nez v11, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_5

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v15, "appVersion %s length is over limit %d substring to %s"

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v1, v12, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v12, v7

    const/4 v1, 0x2

    aput-object v11, v12, v1

    invoke-static {v15, v12}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v11, v1

    :goto_0
    iput-object v11, v8, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    const-string v1, "[param] Set App version: %s"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v1, v11}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isReplaceOldChannel()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_7

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "appChannel %s length is over limit %d substring to %s"

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v1, v15, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v7

    const/4 v1, 0x2

    aput-object v11, v15, v1

    invoke-static {v12, v15}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v11, v1

    :goto_1
    sget-object v16, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    const/16 v17, 0x22c

    const-string v18, "app_channel"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    :goto_2
    iput-object v11, v8, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    const/16 v11, 0x22c

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v7}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v11, "app_channel"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_9

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_9
    :goto_3
    const-string v1, "[param] Set App channel: %s"

    new-array v11, v7, [Ljava/lang/Object;

    iget-object v12, v8, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    aput-object v12, v11, v6

    invoke-static {v1, v11}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_6
    sget-boolean v11, Lcom/tencent/bugly/b;->c:Z

    if-eqz v11, :cond_a

    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_b

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "appPackageName %s length is over limit %d substring to %s"

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v1, v15, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v7

    const/4 v1, 0x2

    aput-object v11, v15, v1

    invoke-static {v12, v15}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    move-object v11, v1

    :goto_5
    iput-object v11, v8, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string v1, "[param] Set App package: %s"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v1, v11}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_d

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "deviceId %s length is over limit %d substring to %s"

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v7

    const/4 v1, 0x2

    aput-object v11, v13, v1

    invoke-static {v12, v13}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    move-object v11, v1

    :goto_6
    invoke-virtual {v8, v11}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v1, "s[param] Set device ID: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v11, v7, v6

    invoke-static {v1, v7}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isUploadProcess()Z

    move-result v1

    iput-boolean v1, v8, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isBuglyLogUpload()Z

    move-result v1

    sput-boolean v1, Lcom/tencent/bugly/proguard/y;->a:Z

    .line 164
    :cond_f
    invoke-static {v5, v3}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    move v1, v6

    .line 167
    :goto_7
    sget-object v7, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ge v1, v7, :cond_11

    .line 169
    :try_start_7
    sget-object v7, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/a;

    iget v7, v7, Lcom/tencent/bugly/a;->id:I

    invoke-virtual {v10, v7}, Lcom/tencent/bugly/proguard/n;->a(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 170
    sget-object v7, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/a;

    invoke-virtual {v7, v5, v2, v3}, Lcom/tencent/bugly/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 173
    :try_start_8
    invoke-static {v7}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 174
    invoke-static {v7}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    if-eqz v3, :cond_12

    .line 180
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v1

    goto :goto_9

    :cond_12
    const-wide/16 v1, 0x0

    .line 181
    :goto_9
    invoke-virtual {v9, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(J)V

    const-string v1, "[init] Bugly initialization finished."

    .line 183
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 184
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 101
    monitor-exit v4

    throw v1
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/a;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    sget-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 279
    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/common/info/a;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "bugly"

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
