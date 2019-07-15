.class public final Lrx/internal/util/f;
.super Lrx/c;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/f$d;,
        Lrx/internal/util/f$c;,
        Lrx/internal/util/f$b;,
        Lrx/internal/util/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    .line 47
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lrx/internal/util/f;->c:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lrx/internal/util/f$a;

    invoke-direct {v0, p1}, Lrx/internal/util/f$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/e/c;->a(Lrx/c$a;)Lrx/c$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/c;-><init>(Lrx/c$a;)V

    .line 77
    iput-object p1, p0, Lrx/internal/util/f;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Lrx/i;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i<",
            "-TT;>;TT;)",
            "Lrx/e;"
        }
    .end annotation

    .line 59
    sget-boolean v0, Lrx/internal/util/f;->c:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lrx/internal/producers/SingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/i;Ljava/lang/Object;)V

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lrx/internal/util/f$d;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/f$d;-><init>(Lrx/i;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lrx/internal/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/f<",
            "TT;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lrx/internal/util/f;

    invoke-direct {v0, p0}, Lrx/internal/util/f;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public c(Lrx/f;)Lrx/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f;",
            ")",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 97
    instance-of v0, p1, Lrx/internal/schedulers/b;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lrx/internal/schedulers/b;

    .line 99
    new-instance v0, Lrx/internal/util/f$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/f$1;-><init>(Lrx/internal/util/f;Lrx/internal/schedulers/b;)V

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lrx/internal/util/f$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/f$2;-><init>(Lrx/internal/util/f;Lrx/f;)V

    .line 125
    :goto_0
    new-instance p1, Lrx/internal/util/f$b;

    iget-object v1, p0, Lrx/internal/util/f;->b:Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lrx/internal/util/f$b;-><init>(Ljava/lang/Object;Lrx/b/f;)V

    invoke-static {p1}, Lrx/internal/util/f;->a(Lrx/c$a;)Lrx/c;

    move-result-object p1

    return-object p1
.end method
