.class public Lcom/tencent/smtt/utils/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/z$b;,
        Lcom/tencent/smtt/utils/z$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/smtt/utils/z$b;

.field private b:Lcom/tencent/smtt/utils/z$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/utils/z;->a:Lcom/tencent/smtt/utils/z$b;

    iput-object v0, p0, Lcom/tencent/smtt/utils/z;->b:Lcom/tencent/smtt/utils/z$b;

    return-void
.end method

.method private a(Lcom/tencent/smtt/utils/z$b;Lcom/tencent/smtt/utils/z$b;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/smtt/utils/z$b;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/tencent/smtt/utils/z$b;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/smtt/utils/z$b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/smtt/utils/z$b;->a()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/smtt/utils/z$a;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/smtt/utils/z$a;

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/z$a;->a()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/z$a;->a()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/z$a;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/z$a;->b()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/tencent/smtt/utils/z$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/utils/z$b;-><init>(Lcom/tencent/smtt/utils/z;Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/z;->a:Lcom/tencent/smtt/utils/z$b;

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/smtt/utils/z;->b:Lcom/tencent/smtt/utils/z$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/utils/z;->a:Lcom/tencent/smtt/utils/z$b;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/utils/z;->b:Lcom/tencent/smtt/utils/z$b;

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/z$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/smtt/utils/z;->a:Lcom/tencent/smtt/utils/z$b;

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/z$b;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/utils/z;->a:Lcom/tencent/smtt/utils/z$b;

    iget-object v2, p0, Lcom/tencent/smtt/utils/z;->b:Lcom/tencent/smtt/utils/z$b;

    invoke-direct {p0, v0, v2}, Lcom/tencent/smtt/utils/z;->a(Lcom/tencent/smtt/utils/z$b;Lcom/tencent/smtt/utils/z$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public b(Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/tencent/smtt/utils/z$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/utils/z$b;-><init>(Lcom/tencent/smtt/utils/z;Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/z;->b:Lcom/tencent/smtt/utils/z$b;

    return-void
.end method
