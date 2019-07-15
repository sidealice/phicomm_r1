.class public Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;
.super Landroid/content/BroadcastReceiver;
.source "BUGLY"


# static fields
.field private static d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->e:Z

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic a()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x7530

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 180
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 130
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->e:Z

    if-eqz v1, :cond_3

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is Connect BC "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    const-string v2, "network %s changed to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    if-nez v1, :cond_4

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 150
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v3

    .line 151
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v6

    .line 152
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v7

    .line 154
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    if-nez v7, :cond_6

    .line 155
    :cond_5
    const-string v1, "not inited BC not work"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    sget v1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    invoke-virtual {v6, v1}, Lcom/tencent/bugly/proguard/u;->a(I)J

    move-result-wide v2

    sub-long v2, v4, v2

    cmp-long v1, v2, v8

    if-lez v1, :cond_7

    .line 164
    const-string v1, "try to upload crash on network changed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 165
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_7

    .line 167
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/crashreport/crash/c;->a(J)V

    .line 170
    :cond_7
    const/16 v1, 0x3e9

    invoke-virtual {v6, v1}, Lcom/tencent/bugly/proguard/u;->a(I)J

    move-result-wide v2

    sub-long v2, v4, v2

    cmp-long v1, v2, v8

    if-lez v1, :cond_1

    .line 172
    const-string v1, "try to upload userinfo on network changed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 174
    sget-object v1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/biz/a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    .line 44
    :cond_0
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addFilter(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    :cond_0
    const-string v0, "add action %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 109
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized register(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier$1;

    invoke-direct {v0, p0, p0}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier$1;-><init>(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;)V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Unregister broadcast receiver of Bugly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
