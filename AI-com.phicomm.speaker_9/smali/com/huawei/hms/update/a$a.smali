.class Lcom/huawei/hms/update/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/update/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/update/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/update/a$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huawei/hms/update/a$a;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Lcom/huawei/hms/a/d;

    iget-object v1, p0, Lcom/huawei/hms/update/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/hms/a/d;-><init>(Landroid/content/Context;)V

    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/a/d;->b(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.huawei.hwid"

    invoke-virtual {v0, v2}, Lcom/huawei/hms/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.huawei.hwid"

    invoke-virtual {v0, v3}, Lcom/huawei/hms/a/d;->a(Ljava/lang/String;)Lcom/huawei/hms/a/d$a;

    move-result-object v0

    sget-object v3, Lcom/huawei/hms/a/d$a;->c:Lcom/huawei/hms/a/d$a;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/huawei/hms/update/a$a;->b:I

    const-string v0, "OVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-object v2, p0, Lcom/huawei/hms/update/a$a;->c:Ljava/lang/String;

    return-void

    :cond_2
    const-string v0, "EU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "2.1.1.0_OVE"

    iput-object v0, p0, Lcom/huawei/hms/update/a$a;->c:Ljava/lang/String;

    return-void

    :cond_3
    const v0, 0x132b8b6

    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_4
    :goto_0
    const v0, 0x132b788

    iput v0, p0, Lcom/huawei/hms/update/a$a;->b:I

    :goto_1
    invoke-direct {p0}, Lcom/huawei/hms/update/a$a;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/update/e/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2.1.1.0"

    :goto_0
    iput-object v0, p0, Lcom/huawei/hms/update/a$a;->c:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "2.1.1.0_OVE"

    goto :goto_0

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/update/a$a;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/a$a;->c:Ljava/lang/String;

    return-object v0
.end method
