.class public abstract Lcom/huawei/hms/support/api/push/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/huawei/hms/support/log/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const-string v0, "PushLog"

    invoke-static {v0}, Lcom/huawei/hms/support/log/d;->b(Ljava/lang/String;)Lcom/huawei/hms/support/log/d;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hms/support/log/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hms/support/log/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hms/support/log/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->DEBUG:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/d;->c(Lcom/huawei/hms/support/log/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hms/support/log/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->INFO:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/d;->c(Lcom/huawei/hms/support/log/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hms/support/log/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->WARN:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/d;->c(Lcom/huawei/hms/support/log/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->ERROR:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/d;->c(Lcom/huawei/hms/support/log/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static f()Z
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/api/push/a/b;->a:Lcom/huawei/hms/support/log/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
