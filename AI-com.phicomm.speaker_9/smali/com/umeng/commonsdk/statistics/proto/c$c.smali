.class Lcom/umeng/commonsdk/statistics/proto/c$c;
.super Lcom/umeng/commonsdk/proguard/av;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/av<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/av;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 532
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$c;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 537
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 539
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 540
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    .line 542
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_0

    .line 545
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 546
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 547
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 549
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 550
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    .line 552
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/util/BitSet;I)V

    .line 553
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/aq;->a(I)V

    .line 556
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/a;

    .line 557
    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/commonsdk/proguard/ak;)V

    goto :goto_1

    .line 561
    :cond_3
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/aq;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 532
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$c;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 569
    check-cast p1, Lcom/umeng/commonsdk/proguard/aq;

    .line 571
    new-instance v0, Lcom/umeng/commonsdk/proguard/ah;

    .line 573
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v3, v2, v1}, Lcom/umeng/commonsdk/proguard/ah;-><init>(BBI)V

    .line 574
    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lcom/umeng/commonsdk/proguard/ah;->c:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const/4 v1, 0x0

    move v3, v1

    .line 575
    :goto_0
    iget v5, v0, Lcom/umeng/commonsdk/proguard/ah;->c:I

    if-ge v3, v5, :cond_0

    .line 578
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object v5

    .line 579
    new-instance v6, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v6}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    .line 580
    invoke-virtual {v6, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 581
    iget-object v7, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 584
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Z)V

    .line 585
    invoke-virtual {p1, v4}, Lcom/umeng/commonsdk/proguard/aq;->b(I)Ljava/util/BitSet;

    move-result-object v3

    .line 586
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 588
    new-instance v4, Lcom/umeng/commonsdk/proguard/ag;

    .line 589
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->w()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/umeng/commonsdk/proguard/ag;-><init>(BI)V

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    iget v5, v4, Lcom/umeng/commonsdk/proguard/ag;->b:I

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 591
    :goto_1
    iget v2, v4, Lcom/umeng/commonsdk/proguard/ag;->b:I

    if-ge v1, v2, :cond_1

    .line 593
    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    .line 594
    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 595
    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 598
    :cond_1
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    .line 600
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 601
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/aq;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    .line 602
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->c(Z)V

    :cond_3
    return-void
.end method
