.class public Lcom/unisound/vui/data/entity/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/unisound/vui/data/entity/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/unisound/vui/data/entity/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/data/entity/a/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/vui/data/entity/a/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/unisound/vui/data/entity/a/b;->e:Ljava/lang/Long;

    iput-object p6, p0, Lcom/unisound/vui/data/entity/a/b;->f:Ljava/lang/Long;

    iput-object p7, p0, Lcom/unisound/vui/data/entity/a/b;->g:Ljava/lang/Integer;

    return-void
.end method

.method private b(Lcom/unisound/vui/data/entity/a/b;)I
    .locals 4

    invoke-virtual {p0}, Lcom/unisound/vui/data/entity/a/b;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->f()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/vui/data/entity/a/b;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->f()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/unisound/vui/data/entity/a/b;)I
    .locals 4

    invoke-virtual {p0}, Lcom/unisound/vui/data/entity/a/b;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/vui/data/entity/a/b;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/vui/data/entity/a/b;->b(Lcom/unisound/vui/data/entity/a/b;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/b;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->g:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->e:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->f:Ljava/lang/Long;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/b;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/data/entity/a/b;->a(Lcom/unisound/vui/data/entity/a/b;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/b;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v0, p1, Lcom/unisound/vui/data/entity/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/unisound/vui/data/entity/a/b;->b()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/unisound/vui/data/entity/a/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/unisound/vui/data/entity/a/b;->d()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/unisound/vui/data/entity/a/b;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .restart local p1    # "another":Ljava/lang/Object;
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/b;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/b;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/data/entity/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/data/entity/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
