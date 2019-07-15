.class public Lcom/phicomm/speaker/adapter/a/a/b;
.super Ljava/lang/Object;
.source "ChatData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/adapter/a/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/phicomm/speaker/adapter/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    return v0
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->b:Lcom/phicomm/speaker/adapter/a/a/a;

    .line 89
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/k;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 90
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/d;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 92
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 93
    :cond_1
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/j;

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    .line 94
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 95
    :cond_2
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/h;

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    .line 96
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 97
    :cond_3
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/f;

    if-eqz v0, :cond_4

    const/4 p1, 0x5

    .line 98
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 99
    :cond_4
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/e;

    if-eqz v0, :cond_5

    const/16 p1, 0x8

    .line 100
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 101
    :cond_5
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/c;

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 102
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 103
    :cond_6
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/g;

    if-eqz v0, :cond_7

    const/4 p1, 0x6

    .line 104
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 105
    :cond_7
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/b;

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 107
    :cond_8
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/a/i;

    if-eqz v0, :cond_9

    const/16 p1, 0x9

    .line 108
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    .line 109
    :cond_9
    instance-of p1, p1, Lcom/phicomm/speaker/adapter/a/a;

    if-eqz p1, :cond_a

    const/4 p1, -0x1

    .line 110
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/a/b;->a:I

    goto :goto_0

    :cond_a
    const-string p1, "no support date type !!"

    .line 112
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()Lcom/phicomm/speaker/adapter/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/a/b;->b:Lcom/phicomm/speaker/adapter/a/a/a;

    return-object v0
.end method
