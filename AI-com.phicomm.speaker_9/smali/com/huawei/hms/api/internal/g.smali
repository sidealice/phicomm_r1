.class public abstract Lcom/huawei/hms/api/internal/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context must not be null."

    invoke-static {p0, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/huawei/hms/a/d;

    invoke-direct {v0, p0}, Lcom/huawei/hms/a/d;-><init>(Landroid/content/Context;)V

    const-string p0, "com.huawei.hwid"

    invoke-virtual {v0, p0}, Lcom/huawei/hms/a/d;->a(Ljava/lang/String;)Lcom/huawei/hms/a/d$a;

    move-result-object p0

    sget-object v1, Lcom/huawei/hms/a/d$a;->c:Lcom/huawei/hms/a/d$a;

    invoke-virtual {v1, p0}, Lcom/huawei/hms/a/d$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v1, Lcom/huawei/hms/a/d$a;->b:Lcom/huawei/hms/a/d$a;

    invoke-virtual {v1, p0}, Lcom/huawei/hms/a/d$a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string p0, "com.huawei.hwid"

    invoke-virtual {v0, p0}, Lcom/huawei/hms/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    const-string p0, "com.huawei.hwid"

    invoke-virtual {v0, p0}, Lcom/huawei/hms/a/d;->b(Ljava/lang/String;)I

    move-result p0

    const v0, 0x13748ac

    if-ge p0, v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
