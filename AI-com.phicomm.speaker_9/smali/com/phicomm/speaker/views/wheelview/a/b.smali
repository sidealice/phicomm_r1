.class public Lcom/phicomm/speaker/views/wheelview/a/b;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lcom/phicomm/speaker/views/wheelview/a/c;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 29
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->a:I

    .line 40
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->b:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->a:I

    .line 52
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->b:I

    .line 53
    iput-object p3, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 67
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->b:I

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->a:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/wheelview/a/b;->a()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 59
    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->a:I

    add-int/2addr v1, p1

    .line 60
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/a/b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 62
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
