.class final Lrx/internal/operators/OperatorReplay$Node;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x367ac732fab94eaL


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 862
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 863
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 864
    return-void
.end method
