.class Ldagger/internal/ProblemDetector$ArraySet;
.super Ljava/util/AbstractSet;
.source "ProblemDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/ProblemDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArraySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/internal/ProblemDetector$ArraySet;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ldagger/internal/ProblemDetector$ArraySet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<TT;>;"
    iget-object v0, p0, Ldagger/internal/ProblemDetector$ArraySet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
