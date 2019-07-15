.class public abstract Lcom/phicomm/speaker/adapter/a/a/a;
.super Ljava/lang/Object;
.source "BaseData.java"


# instance fields
.field private a:Z

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/a;->a:Z

    .line 19
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/a;->c:Z

    return-void
.end method


# virtual methods
.method protected a(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/phicomm/speaker/adapter/a/a/a;->b:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/phicomm/speaker/adapter/a/a/a;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/phicomm/speaker/adapter/a/a/a;->a:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/a;->c:Z

    return v0
.end method

.method public d()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/phicomm/speaker/adapter/a/a/a;->b:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a/a/a;->a:Z

    return v0
.end method
