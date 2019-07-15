.class abstract Lnluparser/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceTypes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnluparser/a/a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/reflect/Type;
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 2

    invoke-virtual {p0}, Lnluparser/a/a;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "default type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lnluparser/a/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
