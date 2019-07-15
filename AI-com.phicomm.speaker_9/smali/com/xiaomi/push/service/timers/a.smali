.class public final Lcom/xiaomi/push/service/timers/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/timers/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/timers/a$a;


# direct methods
.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/xiaomi/push/service/timers/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;

    invoke-interface {v1}, Lcom/xiaomi/push/service/timers/a$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/timers/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/timers/b;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v0, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    const-string v5, "com.xiaomi.push.service.XMJobService"

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.permission.BIND_JOB_SERVICE"

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check service err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Should export service: com.xiaomi.push.service.XMJobService with permission android.permission.BIND_JOB_SERVICE in AndroidManifest.xml file"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    :try_start_1
    const-string v0, "android.app.job.JobService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mBinder"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/xiaomi/push/service/timers/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/timers/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    new-instance v0, Lcom/xiaomi/push/service/timers/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/timers/b;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    new-instance v0, Lcom/xiaomi/push/service/timers/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/timers/b;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static declared-synchronized a(Z)V
    .locals 2

    const-class v0, Lcom/xiaomi/push/service/timers/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;

    if-nez v1, :cond_0

    const-string p0, "timer is not initialized"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;

    invoke-interface {v1, p0}, Lcom/xiaomi/push/service/timers/a$a;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Z
    .locals 2

    const-class v0, Lcom/xiaomi/push/service/timers/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/push/service/timers/a;->a:Lcom/xiaomi/push/service/timers/a$a;

    invoke-interface {v1}, Lcom/xiaomi/push/service/timers/a$a;->b()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
