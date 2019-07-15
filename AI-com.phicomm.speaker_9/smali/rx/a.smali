.class public Lrx/a;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a$b;,
        Lrx/a$a;
    }
.end annotation

.annotation build Lrx/annotations/Beta;
.end annotation


# static fields
.field static final a:Lrx/a;

.field static final b:Lrx/a;


# instance fields
.field private final c:Lrx/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$1;

    invoke-direct {v1}, Lrx/a$1;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/a;-><init>(Lrx/a$a;Z)V

    sput-object v0, Lrx/a;->a:Lrx/a;

    .line 78
    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$2;

    invoke-direct {v1}, Lrx/a$2;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/a;-><init>(Lrx/a$a;Z)V

    sput-object v0, Lrx/a;->b:Lrx/a;

    return-void
.end method

.method protected constructor <init>(Lrx/a$a;Z)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 1013
    invoke-static {p1}, Lrx/e/c;->a(Lrx/a$a;)Lrx/a$a;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lrx/a;->c:Lrx/a$a;

    return-void
.end method
