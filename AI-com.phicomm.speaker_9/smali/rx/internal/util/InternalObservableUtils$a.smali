.class final Lrx/internal/util/InternalObservableUtils$a;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b/g<",
        "TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/c<",
            "TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/c<",
            "TR;-TT;>;)V"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$a;->a:Lrx/b/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$a;->a:Lrx/b/c;

    invoke-interface {v0, p1, p2}, Lrx/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
