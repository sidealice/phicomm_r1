.class public final Lrx/internal/operators/h;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c$b<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/f;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lrx/f;ZI)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/h;->a:Lrx/f;

    .line 61
    iput-boolean p2, p0, Lrx/internal/operators/h;->b:Z

    if-lez p3, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    sget p3, Lrx/internal/util/e;->b:I

    :goto_0
    iput p3, p0, Lrx/internal/operators/h;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/h;->a(Lrx/i;)Lrx/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/i;)Lrx/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)",
            "Lrx/i<",
            "-TT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lrx/internal/operators/h;->a:Lrx/f;

    instance-of v0, v0, Lrx/internal/schedulers/e;

    if-eqz v0, :cond_0

    return-object p1

    .line 70
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/h;->a:Lrx/f;

    instance-of v0, v0, Lrx/internal/schedulers/i;

    if-eqz v0, :cond_1

    return-object p1

    .line 74
    :cond_1
    new-instance v0, Lrx/internal/operators/h$a;

    iget-object v1, p0, Lrx/internal/operators/h;->a:Lrx/f;

    iget-boolean v2, p0, Lrx/internal/operators/h;->b:Z

    iget v3, p0, Lrx/internal/operators/h;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lrx/internal/operators/h$a;-><init>(Lrx/f;Lrx/i;ZI)V

    .line 75
    invoke-virtual {v0}, Lrx/internal/operators/h$a;->b()V

    return-object v0
.end method
