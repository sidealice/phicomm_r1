.class public final Lrx/internal/util/atomic/c;
.super Lrx/internal/util/atomic/a;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/atomic/a<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/Integer;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicLong;

.field d:J

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/c;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lrx/internal/util/atomic/a;-><init>(I)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/c;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    div-int/lit8 p1, p1, 0x4

    sget-object v0, Lrx/internal/util/atomic/c;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lrx/internal/util/atomic/c;->f:I

    return-void
.end method

.method private a()J
    .locals 2

    .line 124
    iget-object v0, p0, Lrx/internal/util/atomic/c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private b()J
    .locals 2

    .line 127
    iget-object v0, p0, Lrx/internal/util/atomic/c;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(J)V
    .locals 1

    .line 116
    iget-object v0, p0, Lrx/internal/util/atomic/c;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private c(J)V
    .locals 1

    .line 120
    iget-object v0, p0, Lrx/internal/util/atomic/c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 35
    invoke-super {p0}, Lrx/internal/util/atomic/a;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 5

    .line 112
    invoke-direct {p0}, Lrx/internal/util/atomic/c;->b()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/c;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 35
    invoke-super {p0}, Lrx/internal/util/atomic/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null is not a valid element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_0
    iget-object v0, p0, Lrx/internal/util/atomic/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    iget v1, p0, Lrx/internal/util/atomic/c;->b:I

    .line 56
    iget-object v2, p0, Lrx/internal/util/atomic/c;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 57
    invoke-virtual {p0, v2, v3, v1}, Lrx/internal/util/atomic/c;->a(JI)I

    move-result v4

    .line 58
    iget-wide v5, p0, Lrx/internal/util/atomic/c;->d:J

    cmp-long v7, v2, v5

    if-ltz v7, :cond_2

    .line 59
    iget v5, p0, Lrx/internal/util/atomic/c;->f:I

    int-to-long v5, v5

    add-long v7, v2, v5

    .line 60
    invoke-virtual {p0, v7, v8, v1}, Lrx/internal/util/atomic/c;->a(JI)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/atomic/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 61
    iput-wide v7, p0, Lrx/internal/util/atomic/c;->d:J

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, v0, v4}, Lrx/internal/util/atomic/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v4, p1}, Lrx/internal/util/atomic/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .line 68
    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/c;->b(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lrx/internal/util/atomic/c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/atomic/c;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lrx/internal/util/atomic/c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 75
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/atomic/c;->a(J)I

    move-result v2

    .line 77
    iget-object v3, p0, Lrx/internal/util/atomic/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 78
    invoke-virtual {p0, v3, v2}, Lrx/internal/util/atomic/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 82
    :cond_0
    invoke-virtual {p0, v3, v2, v5}, Lrx/internal/util/atomic/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long v5, v0, v2

    .line 83
    invoke-direct {p0, v5, v6}, Lrx/internal/util/atomic/c;->c(J)V

    return-object v4
.end method

.method public size()I
    .locals 7

    .line 99
    invoke-direct {p0}, Lrx/internal/util/atomic/c;->a()J

    move-result-wide v0

    .line 102
    :goto_0
    invoke-direct {p0}, Lrx/internal/util/atomic/c;->b()J

    move-result-wide v2

    .line 103
    invoke-direct {p0}, Lrx/internal/util/atomic/c;->a()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    sub-long v0, v2, v4

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method
