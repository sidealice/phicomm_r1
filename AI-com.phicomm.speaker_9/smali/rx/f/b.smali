.class public final Lrx/f/b;
.super Ljava/lang/Object;
.source "Timestamped.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p3, p0, Lrx/f/b;->b:Ljava/lang/Object;

    .line 28
    iput-wide p1, p0, Lrx/f/b;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lrx/f/b;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lrx/f/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 57
    :cond_1
    instance-of v2, p1, Lrx/f/b;

    if-nez v2, :cond_2

    return v1

    .line 60
    :cond_2
    check-cast p1, Lrx/f/b;

    .line 61
    iget-wide v2, p0, Lrx/f/b;->a:J

    iget-wide v4, p1, Lrx/f/b;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lrx/f/b;->b:Ljava/lang/Object;

    iget-object v3, p1, Lrx/f/b;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lrx/f/b;->b:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lrx/f/b;->b:Ljava/lang/Object;

    iget-object p1, p1, Lrx/f/b;->b:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 68
    iget-wide v0, p0, Lrx/f/b;->a:J

    iget-wide v2, p0, Lrx/f/b;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long v4, v0, v2

    long-to-int v0, v4

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v1, v0

    .line 69
    iget-object v0, p0, Lrx/f/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrx/f/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Timestamped(timestampMillis = %d, value = %s)"

    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lrx/f/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lrx/f/b;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
