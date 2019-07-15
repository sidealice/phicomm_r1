.class final Lrx/internal/operators/i$g;
.super Lrx/internal/operators/i$a;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
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
.field final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1194
    invoke-direct {p0}, Lrx/internal/operators/i$a;-><init>()V

    .line 1195
    iput p1, p0, Lrx/internal/operators/i$g;->d:I

    return-void
.end method


# virtual methods
.method d()V
    .locals 2

    .line 1201
    iget v0, p0, Lrx/internal/operators/i$g;->b:I

    iget v1, p0, Lrx/internal/operators/i$g;->d:I

    if-le v0, v1, :cond_0

    .line 1202
    invoke-virtual {p0}, Lrx/internal/operators/i$g;->a()V

    :cond_0
    return-void
.end method
