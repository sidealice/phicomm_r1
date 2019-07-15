.class public Lnluparser/e;
.super Ljava/lang/Object;
.source "NluProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lnluparser/b;


# direct methods
.method constructor <init>(Lnluparser/f;Lnluparser/b$a;Lnluparser/a$a;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-interface {p1}, Lnluparser/f;->a()Ljava/util/Map;

    move-result-object p1

    .line 27
    invoke-interface {p3, p1}, Lnluparser/a$a;->a(Ljava/util/Map;)Lnluparser/a;

    move-result-object p3

    invoke-interface {p2, p3}, Lnluparser/b$a;->a(Lnluparser/a;)Lnluparser/b;

    move-result-object p2

    .line 28
    invoke-static {p2}, Lnluparser/e;->a(Lnluparser/b;)V

    .line 29
    iput-object p2, p0, Lnluparser/e;->b:Lnluparser/b;

    .line 30
    iput-object p1, p0, Lnluparser/e;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Lnluparser/b;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 36
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 37
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 38
    aget-object v0, p0, v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const-class v0, Lnluparser/scheme/NLU;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 39
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only parameter interface Converter<String, NLU> definitions are supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only parameter interface Converter<String, NLU> definitions are supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnluparser/scheme/NLU<",
            "TI;TR;>;I::",
            "Lnluparser/scheme/Intent;",
            "R::",
            "Lnluparser/scheme/Result;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    iget-object v0, p0, Lnluparser/e;->b:Lnluparser/b;

    invoke-interface {v0, p1}, Lnluparser/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnluparser/scheme/NLU;

    return-object p1
.end method
