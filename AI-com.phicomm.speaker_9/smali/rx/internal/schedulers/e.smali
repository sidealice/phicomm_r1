.class public final Lrx/internal/schedulers/e;
.super Lrx/f;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/e$a;
    }
.end annotation


# static fields
.field public static final b:Lrx/internal/schedulers/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lrx/internal/schedulers/e;

    invoke-direct {v0}, Lrx/internal/schedulers/e;-><init>()V

    sput-object v0, Lrx/internal/schedulers/e;->b:Lrx/internal/schedulers/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lrx/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lrx/f$a;
    .locals 1

    .line 38
    new-instance v0, Lrx/internal/schedulers/e$a;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/e$a;-><init>(Lrx/internal/schedulers/e;)V

    return-object v0
.end method
