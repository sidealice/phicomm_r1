.class final Lrx/internal/operators/i$f;
.super Lrx/internal/operators/i$a;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/i$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final d:Lrx/f;

.field final e:J

.field final f:I


# direct methods
.method public constructor <init>(IJLrx/f;)V
    .locals 0

    .line 1220
    invoke-direct {p0}, Lrx/internal/operators/i$a;-><init>()V

    .line 1221
    iput-object p4, p0, Lrx/internal/operators/i$f;->d:Lrx/f;

    .line 1222
    iput p1, p0, Lrx/internal/operators/i$f;->f:I

    .line 1223
    iput-wide p2, p0, Lrx/internal/operators/i$f;->e:J

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1228
    new-instance v0, Lrx/f/b;

    iget-object v1, p0, Lrx/internal/operators/i$f;->d:Lrx/f;

    invoke-virtual {v1}, Lrx/f;->b()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lrx/f/b;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method b()Lrx/internal/operators/i$c;
    .locals 8

    .line 1238
    iget-object v0, p0, Lrx/internal/operators/i$f;->d:Lrx/f;

    invoke-virtual {v0}, Lrx/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/operators/i$f;->e:J

    sub-long v4, v0, v2

    .line 1239
    invoke-virtual {p0}, Lrx/internal/operators/i$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$c;

    .line 1241
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$c;

    :goto_0
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    if-eqz v0, :cond_0

    .line 1242
    iget-object v2, v0, Lrx/internal/operators/i$c;->a:Ljava/lang/Object;

    check-cast v2, Lrx/f/b;

    invoke-virtual {v2}, Lrx/f/b;->a()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 1244
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$c;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1233
    check-cast p1, Lrx/f/b;

    invoke-virtual {p1}, Lrx/f/b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .locals 9

    .line 1252
    iget-object v0, p0, Lrx/internal/operators/i$f;->d:Lrx/f;

    invoke-virtual {v0}, Lrx/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/operators/i$f;->e:J

    sub-long v4, v0, v2

    .line 1254
    invoke-virtual {p0}, Lrx/internal/operators/i$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$c;

    .line 1255
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$c;

    const/4 v2, 0x0

    :goto_0
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    if-eqz v0, :cond_1

    .line 1260
    iget v3, p0, Lrx/internal/operators/i$f;->b:I

    iget v6, p0, Lrx/internal/operators/i$f;->f:I

    if-le v3, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1262
    iget v1, p0, Lrx/internal/operators/i$f;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/i$f;->b:I

    .line 1264
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$c;

    goto :goto_0

    .line 1266
    :cond_0
    iget-object v3, v0, Lrx/internal/operators/i$c;->a:Ljava/lang/Object;

    check-cast v3, Lrx/f/b;

    .line 1267
    invoke-virtual {v3}, Lrx/f/b;->a()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1269
    iget v1, p0, Lrx/internal/operators/i$f;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/i$f;->b:I

    .line 1271
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$c;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 1281
    invoke-virtual {p0, v1}, Lrx/internal/operators/i$f;->b(Lrx/internal/operators/i$c;)V

    :cond_2
    return-void
.end method

.method e()V
    .locals 10

    .line 1286
    iget-object v0, p0, Lrx/internal/operators/i$f;->d:Lrx/f;

    invoke-virtual {v0}, Lrx/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/operators/i$f;->e:J

    sub-long v4, v0, v2

    .line 1288
    invoke-virtual {p0}, Lrx/internal/operators/i$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$c;

    .line 1289
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$c;

    const/4 v2, 0x0

    :goto_0
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    if-eqz v0, :cond_0

    .line 1293
    iget v3, p0, Lrx/internal/operators/i$f;->b:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    .line 1294
    iget-object v3, v0, Lrx/internal/operators/i$c;->a:Ljava/lang/Object;

    check-cast v3, Lrx/f/b;

    .line 1295
    invoke-virtual {v3}, Lrx/f/b;->a()J

    move-result-wide v7

    cmp-long v3, v7, v4

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1297
    iget v1, p0, Lrx/internal/operators/i$f;->b:I

    sub-int/2addr v1, v6

    iput v1, p0, Lrx/internal/operators/i$f;->b:I

    .line 1299
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$c;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1308
    invoke-virtual {p0, v1}, Lrx/internal/operators/i$f;->b(Lrx/internal/operators/i$c;)V

    :cond_1
    return-void
.end method
