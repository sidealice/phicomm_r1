.class public Lrx/internal/util/a/i;
.super Lrx/internal/util/a/j;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/j<",
        "TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    .line 107
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lrx/internal/util/a/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .line 241
    invoke-virtual {p0}, Lrx/internal/util/a/i;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/a/i;->b()J

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

.method public offer(Ljava/lang/Object;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-wide v1, v6, Lrx/internal/util/a/i;->b:J

    const-wide/16 v3, 0x1

    add-long v7, v1, v3

    .line 118
    iget-object v1, v6, Lrx/internal/util/a/i;->d:[J

    const-wide v9, 0x7fffffffffffffffL

    .line 123
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/i;->b()J

    move-result-wide v11

    .line 124
    invoke-virtual {v6, v11, v12}, Lrx/internal/util/a/i;->d(J)J

    move-result-wide v13

    .line 125
    invoke-virtual {v6, v1, v13, v14}, Lrx/internal/util/a/i;->a([JJ)J

    move-result-wide v15

    sub-long v17, v15, v11

    const-wide/16 v15, 0x0

    cmp-long v2, v17, v15

    if-nez v2, :cond_1

    move-wide/from16 v19, v9

    add-long v9, v11, v3

    .line 130
    invoke-virtual {v6, v11, v12, v9, v10}, Lrx/internal/util/a/i;->c(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    invoke-virtual {v6, v11, v12}, Lrx/internal/util/a/i;->a(J)J

    move-result-wide v2

    .line 147
    invoke-virtual {v6, v2, v3, v0}, Lrx/internal/util/a/i;->a(JLjava/lang/Object;)V

    move-object v0, v6

    move-wide v2, v13

    move-wide v4, v9

    .line 151
    invoke-virtual/range {v0 .. v5}, Lrx/internal/util/a/i;->a([JJJ)V

    const/4 v0, 0x1

    return v0

    :cond_1
    move-wide/from16 v19, v9

    cmp-long v2, v17, v15

    if-gez v2, :cond_3

    sub-long v9, v11, v7

    cmp-long v2, v9, v19

    if-gtz v2, :cond_3

    .line 135
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/i;->a()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-gtz v2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    move-wide v9, v11

    goto :goto_0

    :cond_3
    move-wide/from16 v9, v19

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 208
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/a/i;->a()J

    move-result-wide v0

    .line 210
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/a/i;->a(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lrx/internal/util/a/i;->b(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lrx/internal/util/a/i;->b()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 165
    iget-object v1, v6, Lrx/internal/util/a/i;->d:[J

    const-wide/16 v2, -0x1

    .line 170
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/i;->a()J

    move-result-wide v4

    .line 171
    invoke-virtual {v6, v4, v5}, Lrx/internal/util/a/i;->d(J)J

    move-result-wide v7

    .line 172
    invoke-virtual {v6, v1, v7, v8}, Lrx/internal/util/a/i;->a([JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    sub-long v15, v9, v13

    const-wide/16 v9, 0x0

    cmp-long v0, v15, v9

    const/4 v9, 0x0

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {v6, v4, v5, v13, v14}, Lrx/internal/util/a/i;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v6, v4, v5}, Lrx/internal/util/a/i;->a(J)J

    move-result-wide v2

    .line 193
    invoke-virtual {v6, v2, v3}, Lrx/internal/util/a/i;->b(J)Ljava/lang/Object;

    move-result-object v10

    .line 194
    invoke-virtual {v6, v2, v3, v9}, Lrx/internal/util/a/i;->a(JLjava/lang/Object;)V

    .line 198
    iget-wide v2, v6, Lrx/internal/util/a/i;->b:J

    add-long v13, v4, v2

    add-long v4, v13, v11

    move-object v0, v6

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lrx/internal/util/a/i;->a([JJJ)V

    return-object v10

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v0, v15, v7

    if-gez v0, :cond_0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/a/i;->b()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    return-object v9
.end method

.method public size()I
    .locals 7

    .line 224
    invoke-virtual {p0}, Lrx/internal/util/a/i;->a()J

    move-result-wide v0

    .line 227
    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/a/i;->b()J

    move-result-wide v2

    .line 228
    invoke-virtual {p0}, Lrx/internal/util/a/i;->a()J

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
