.class public final Lnluparser/a/e;
.super Ljava/lang/Object;
.source "PatternClassifierFactory.java"

# interfaces
.implements Lnluparser/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/a/e$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lnluparser/a/e;
    .locals 1

    .line 21
    new-instance v0, Lnluparser/a/e;

    invoke-direct {v0}, Lnluparser/a/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lnluparser/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lnluparser/a;"
        }
    .end annotation

    .line 28
    new-instance v0, Lnluparser/a/e$a;

    invoke-direct {v0, p1}, Lnluparser/a/e$a;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
