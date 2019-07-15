.class final Lrx/e/i;
.super Lrx/e/h;
.source "RxJavaSingleExecutionHookDefault.java"


# static fields
.field private static final a:Lrx/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lrx/e/i;

    invoke-direct {v0}, Lrx/e/i;-><init>()V

    sput-object v0, Lrx/e/i;->a:Lrx/e/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lrx/e/h;-><init>()V

    return-void
.end method

.method public static a()Lrx/e/h;
    .locals 1

    .line 32
    sget-object v0, Lrx/e/i;->a:Lrx/e/i;

    return-object v0
.end method
