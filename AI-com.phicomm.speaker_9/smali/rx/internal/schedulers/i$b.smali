.class final Lrx/internal/schedulers/i$b;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lrx/internal/schedulers/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/a;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method constructor <init>(Lrx/b/a;Ljava/lang/Long;I)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lrx/internal/schedulers/i$b;->a:Lrx/b/a;

    .line 109
    iput-object p2, p0, Lrx/internal/schedulers/i$b;->b:Ljava/lang/Long;

    .line 110
    iput p3, p0, Lrx/internal/schedulers/i$b;->c:I

    return-void
.end method


# virtual methods
.method public a(Lrx/internal/schedulers/i$b;)I
    .locals 2

    .line 115
    iget-object v0, p0, Lrx/internal/schedulers/i$b;->b:Ljava/lang/Long;

    iget-object v1, p1, Lrx/internal/schedulers/i$b;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget v0, p0, Lrx/internal/schedulers/i$b;->c:I

    iget p1, p1, Lrx/internal/schedulers/i$b;->c:I

    invoke-static {v0, p1}, Lrx/internal/schedulers/i;->a(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 102
    check-cast p1, Lrx/internal/schedulers/i$b;

    invoke-virtual {p0, p1}, Lrx/internal/schedulers/i$b;->a(Lrx/internal/schedulers/i$b;)I

    move-result p1

    return p1
.end method
