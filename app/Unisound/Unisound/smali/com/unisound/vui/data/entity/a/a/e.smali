.class public Lcom/unisound/vui/data/entity/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/unisound/vui/data/entity/a/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/vui/data/entity/a/a/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/data/entity/a/a/e;->c:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/unisound/vui/data/entity/a/a/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/unisound/vui/data/entity/a/a/e;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/vui/data/entity/a/a/e;)I
    .locals 5

    invoke-virtual {p0}, Lcom/unisound/vui/data/entity/a/a/e;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/a/e;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/e;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/e;->e:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/e;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/e;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/a/e;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/data/entity/a/a/e;->a(Lcom/unisound/vui/data/entity/a/a/e;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/e;->e:Ljava/lang/Long;

    return-object v0
.end method
