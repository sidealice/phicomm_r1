.class public Lcom/xiaomi/mipush/sdk/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:D

.field private c:Lcom/xiaomi/metok/geofencing/a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/g;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/g;->b:D

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/g;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/g;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/metok/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/metok/geofencing/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/metok/geofencing/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/metok/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->d:Landroid/content/Context;

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/metok/geofencing/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/j;)Z
    .locals 13

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->m()Lcom/xiaomi/xmpush/thrift/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->o()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->m()Lcom/xiaomi/xmpush/thrift/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/metok/geofencing/a;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/g;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/l;->c()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/l;->a()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->o()D

    move-result-wide v7

    double-to-float v7, v7

    const-wide/16 v8, -0x1

    const-string v10, "com.xiaomi.xmsf"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->s()Lcom/xiaomi/xmpush/thrift/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v1 .. v12}, Lcom/xiaomi/metok/geofencing/a;->a(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
