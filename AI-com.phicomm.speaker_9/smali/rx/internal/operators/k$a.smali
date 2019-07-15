.class final Lrx/internal/operators/k$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/k$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final b:I


# instance fields
.field final a:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field c:I

.field private final d:Lrx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/h<",
            "+TR;>;"
        }
    .end annotation
.end field

.field private final e:Lrx/g/b;

.field private volatile f:[Ljava/lang/Object;

.field private g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    sget v0, Lrx/internal/util/e;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/k$a;->b:I

    return-void
.end method

.method public constructor <init>(Lrx/i;Lrx/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TR;>;",
            "Lrx/b/h<",
            "+TR;>;)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Lrx/g/b;

    invoke-direct {v0}, Lrx/g/b;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/k$a;->e:Lrx/g/b;

    .line 184
    iput-object p1, p0, Lrx/internal/operators/k$a;->a:Lrx/d;

    .line 185
    iput-object p2, p0, Lrx/internal/operators/k$a;->d:Lrx/b/h;

    .line 186
    iget-object p2, p0, Lrx/internal/operators/k$a;->e:Lrx/g/b;

    invoke-virtual {p1, p2}, Lrx/i;->a(Lrx/j;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 14

    .line 215
    iget-object v0, p0, Lrx/internal/operators/k$a;->f:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/k$a;->getAndIncrement()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_9

    .line 221
    array-length v1, v0

    .line 222
    iget-object v2, p0, Lrx/internal/operators/k$a;->a:Lrx/d;

    .line 223
    iget-object v5, p0, Lrx/internal/operators/k$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    :cond_1
    :goto_0
    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v7

    move v10, v8

    :goto_1
    if-ge v9, v1, :cond_4

    .line 230
    aget-object v11, v0, v9

    check-cast v11, Lrx/internal/operators/k$a$a;

    iget-object v11, v11, Lrx/internal/operators/k$a$a;->a:Lrx/internal/util/e;

    .line 231
    invoke-virtual {v11}, Lrx/internal/util/e;->e()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    move v10, v7

    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {v11, v12}, Lrx/internal/util/e;->b(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 239
    invoke-interface {v2}, Lrx/d;->onCompleted()V

    .line 242
    iget-object v0, p0, Lrx/internal/operators/k$a;->e:Lrx/g/b;

    invoke-virtual {v0}, Lrx/g/b;->unsubscribe()V

    return-void

    .line 245
    :cond_3
    invoke-virtual {v11, v12}, Lrx/internal/util/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v9

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v9, v11, v3

    if-lez v9, :cond_8

    if-eqz v10, :cond_8

    .line 252
    :try_start_0
    iget-object v9, p0, Lrx/internal/operators/k$a;->d:Lrx/b/h;

    invoke-interface {v9, v6}, Lrx/b/h;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lrx/d;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    iget v9, p0, Lrx/internal/operators/k$a;->c:I

    add-int/2addr v9, v8

    iput v9, p0, Lrx/internal/operators/k$a;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    array-length v6, v0

    move v8, v7

    :goto_3
    if-ge v8, v6, :cond_6

    aget-object v9, v0, v8

    .line 262
    check-cast v9, Lrx/internal/operators/k$a$a;

    iget-object v9, v9, Lrx/internal/operators/k$a$a;->a:Lrx/internal/util/e;

    .line 263
    invoke-virtual {v9}, Lrx/internal/util/e;->d()Ljava/lang/Object;

    .line 265
    invoke-virtual {v9}, Lrx/internal/util/e;->e()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/internal/util/e;->b(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 267
    invoke-interface {v2}, Lrx/d;->onCompleted()V

    .line 269
    iget-object v0, p0, Lrx/internal/operators/k$a;->e:Lrx/g/b;

    invoke-virtual {v0}, Lrx/g/b;->unsubscribe()V

    return-void

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 273
    :cond_6
    iget v6, p0, Lrx/internal/operators/k$a;->c:I

    sget v8, Lrx/internal/operators/k$a;->b:I

    if-le v6, v8, :cond_1

    .line 274
    array-length v6, v0

    move v8, v7

    :goto_4
    if-ge v8, v6, :cond_7

    aget-object v9, v0, v8

    .line 275
    check-cast v9, Lrx/internal/operators/k$a$a;

    iget v10, p0, Lrx/internal/operators/k$a;->c:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lrx/internal/operators/k$a$a;->b(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 277
    :cond_7
    iput v7, p0, Lrx/internal/operators/k$a;->c:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 257
    invoke-static {v0, v2, v6}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/d;Ljava/lang/Object;)V

    return-void

    .line 283
    :cond_8
    invoke-virtual {p0}, Lrx/internal/operators/k$a;->decrementAndGet()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gtz v8, :cond_1

    :cond_9
    return-void
.end method

.method public a([Lrx/c;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 5

    const/4 v0, 0x0

    .line 191
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    move v2, v0

    .line 192
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 193
    new-instance v3, Lrx/internal/operators/k$a$a;

    invoke-direct {v3, p0}, Lrx/internal/operators/k$a$a;-><init>(Lrx/internal/operators/k$a;)V

    .line 194
    aput-object v3, v1, v2

    .line 195
    iget-object v4, p0, Lrx/internal/operators/k$a;->e:Lrx/g/b;

    invoke-virtual {v4, v3}, Lrx/g/b;->a(Lrx/j;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iput-object p2, p0, Lrx/internal/operators/k$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    iput-object v1, p0, Lrx/internal/operators/k$a;->f:[Ljava/lang/Object;

    .line 201
    :goto_1
    array-length p2, p1

    if-ge v0, p2, :cond_1

    .line 202
    aget-object p2, p1, v0

    aget-object v2, v1, v0

    check-cast v2, Lrx/internal/operators/k$a$a;

    invoke-virtual {p2, v2}, Lrx/c;->a(Lrx/i;)Lrx/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
