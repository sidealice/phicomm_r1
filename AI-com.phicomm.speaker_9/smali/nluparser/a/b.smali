.class public final Lnluparser/a/b;
.super Ljava/lang/Object;
.source "MixturePatternClassifierFactory.java"

# interfaces
.implements Lnluparser/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/a/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lnluparser/a/b;
    .locals 1

    .line 16
    new-instance v0, Lnluparser/a/b;

    invoke-direct {v0}, Lnluparser/a/b;-><init>()V

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

    .line 23
    new-instance v0, Lnluparser/a/b$a;

    invoke-direct {v0, p1}, Lnluparser/a/b$a;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
