.class public abstract Lcom/unisound/vui/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/unisound/vui/util/a",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/util/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;

.field private volatile uniquifier:J


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unisound/vui/util/a;->id:I

    iput-object p2, p0, Lcom/unisound/vui/util/a;->name:Ljava/lang/String;

    return-void
.end method

.method private uniquifier()J
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/unisound/vui/util/a;->uniquifier:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/unisound/vui/util/a;->uniquifier:J

    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    invoke-static {}, Lcom/unisound/vui/util/internal/d;->b()Lcom/unisound/vui/util/internal/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/vui/util/internal/d;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unisound/vui/util/a;->uniquifier:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final compareTo(Lcom/unisound/vui/util/a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/a;, "Lcom/unisound/vui/util/a<TT;>;"
    .local p1, "o":Lcom/unisound/vui/util/a;, "TT;"
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/vui/util/a;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/vui/util/a;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/vui/util/a;->uniquifier()J

    move-result-wide v0

    invoke-direct {p1}, Lcom/unisound/vui/util/a;->uniquifier()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "failed to compare two different constants"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/a;, "Lcom/unisound/vui/util/a<TT;>;"
    check-cast p1, Lcom/unisound/vui/util/a;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/util/a;->compareTo(Lcom/unisound/vui/util/a;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/a;, "Lcom/unisound/vui/util/a<TT;>;"
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final id()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/util/a;->id:I

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/util/a;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
