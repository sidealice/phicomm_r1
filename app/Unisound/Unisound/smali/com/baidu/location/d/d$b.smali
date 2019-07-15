.class Lcom/baidu/location/d/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/baidu/location/d/d$a;

.field b:Lcom/baidu/location/d/d$a;

.field final synthetic c:Lcom/baidu/location/d/d;


# direct methods
.method constructor <init>(Lcom/baidu/location/d/d;Lcom/baidu/location/d/d$a;Lcom/baidu/location/d/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/d/d$b;->c:Lcom/baidu/location/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iput-object p3, p0, Lcom/baidu/location/d/d$b;->b:Lcom/baidu/location/d/d$a;

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/location/d/d$a;)D
    .locals 10

    new-instance v0, Lcom/baidu/location/d/d$a;

    iget-object v1, p0, Lcom/baidu/location/d/d$b;->c:Lcom/baidu/location/d/d;

    iget-object v2, p0, Lcom/baidu/location/d/d$b;->b:Lcom/baidu/location/d/d$a;

    iget-wide v2, v2, Lcom/baidu/location/d/d$a;->a:D

    iget-object v4, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v4, v4, Lcom/baidu/location/d/d$a;->a:D

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/baidu/location/d/d$b;->b:Lcom/baidu/location/d/d$a;

    iget-wide v4, v4, Lcom/baidu/location/d/d$a;->b:D

    iget-object v6, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v6, v6, Lcom/baidu/location/d/d$a;->b:D

    sub-double/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/location/d/d$a;-><init>(Lcom/baidu/location/d/d;DD)V

    new-instance v2, Lcom/baidu/location/d/d$a;

    iget-object v3, p0, Lcom/baidu/location/d/d$b;->c:Lcom/baidu/location/d/d;

    iget-wide v4, p1, Lcom/baidu/location/d/d$a;->a:D

    iget-object v1, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v6, v1, Lcom/baidu/location/d/d$a;->a:D

    sub-double/2addr v4, v6

    iget-wide v6, p1, Lcom/baidu/location/d/d$a;->b:D

    iget-object v1, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v8, v1, Lcom/baidu/location/d/d$a;->b:D

    sub-double/2addr v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/baidu/location/d/d$a;-><init>(Lcom/baidu/location/d/d;DD)V

    iget-wide v4, v0, Lcom/baidu/location/d/d$a;->a:D

    iget-wide v6, v2, Lcom/baidu/location/d/d$a;->b:D

    mul-double/2addr v4, v6

    iget-wide v0, v0, Lcom/baidu/location/d/d$a;->b:D

    iget-wide v2, v2, Lcom/baidu/location/d/d$a;->a:D

    mul-double/2addr v0, v2

    sub-double v0, v4, v0

    return-wide v0
.end method

.method b(Lcom/baidu/location/d/d$a;)Z
    .locals 8

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    iget-object v2, p0, Lcom/baidu/location/d/d$b;->c:Lcom/baidu/location/d/d;

    invoke-virtual {p0, p1}, Lcom/baidu/location/d/d$b;->a(Lcom/baidu/location/d/d$a;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/baidu/location/d/d;->a(D)I

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p1, Lcom/baidu/location/d/d$a;->a:D

    iget-object v4, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v4, v4, Lcom/baidu/location/d/d$a;->a:D

    iget-object v6, p0, Lcom/baidu/location/d/d$b;->b:Lcom/baidu/location/d/d$a;

    iget-wide v6, v6, Lcom/baidu/location/d/d$a;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-double/2addr v4, v0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p1, Lcom/baidu/location/d/d$a;->a:D

    iget-object v4, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v4, v4, Lcom/baidu/location/d/d$a;->a:D

    iget-object v6, p0, Lcom/baidu/location/d/d$b;->b:Lcom/baidu/location/d/d$a;

    iget-wide v6, v6, Lcom/baidu/location/d/d$a;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double/2addr v4, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p1, Lcom/baidu/location/d/d$a;->b:D

    iget-object v4, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v4, v4, Lcom/baidu/location/d/d$a;->b:D

    iget-object v6, p0, Lcom/baidu/location/d/d$b;->b:Lcom/baidu/location/d/d$a;

    iget-wide v6, v6, Lcom/baidu/location/d/d$a;->b:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-double/2addr v4, v0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p1, Lcom/baidu/location/d/d$a;->b:D

    iget-object v4, p0, Lcom/baidu/location/d/d$b;->a:Lcom/baidu/location/d/d$a;

    iget-wide v4, v4, Lcom/baidu/location/d/d$a;->b:D

    iget-object v6, p0, Lcom/baidu/location/d/d$b;->b:Lcom/baidu/location/d/d$a;

    iget-wide v6, v6, Lcom/baidu/location/d/d$a;->b:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v0, v4, v0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
