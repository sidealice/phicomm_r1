.class public abstract Lcom/phicomm/speaker/model/common/a;
.super Ljava/lang/Object;
.source "ContinuousAction.java"


# instance fields
.field private a:J

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/phicomm/speaker/model/common/a;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 18
    iget-wide v0, p0, Lcom/phicomm/speaker/model/common/a;->c:J

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/model/common/a;->c:J

    .line 20
    iget-wide v2, p0, Lcom/phicomm/speaker/model/common/a;->c:J

    sub-long v4, v2, v0

    iget-wide v0, p0, Lcom/phicomm/speaker/model/common/a;->a:J

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/phicomm/speaker/model/common/a;->b:I

    .line 23
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/model/common/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/model/common/a;->b:I

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/model/common/a;->a(I)V

    return-void
.end method

.method protected abstract a(I)V
.end method
