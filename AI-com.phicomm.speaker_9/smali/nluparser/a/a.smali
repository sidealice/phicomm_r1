.class abstract Lnluparser/a/a;
.super Ljava/lang/Object;
.source "AbstractClassifier.java"

# interfaces
.implements Lnluparser/a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "serviceTypes"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_0
    iput-object p1, p0, Lnluparser/a/a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/reflect/Type;
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lnluparser/a/a;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "default type"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnluparser/a/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
