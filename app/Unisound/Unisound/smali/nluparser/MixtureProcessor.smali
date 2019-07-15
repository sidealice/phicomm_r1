.class public final Lnluparser/MixtureProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/MixtureProcessor$Builder;
    }
.end annotation


# static fields
.field private static final ARGUMENT_ERROR:Ljava/lang/String; = "Only parameter interface Converter<String, Mixture> definitions are supported."


# instance fields
.field private final converter:Lnluparser/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnluparser/b",
            "<",
            "Ljava/lang/String;",
            "Lnluparser/scheme/Mixture;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceTypes:Ljava/util/Map;
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
.method constructor <init>(Lnluparser/d;Lnluparser/b$a;Lnluparser/a$a;)V
    .locals 2
    .param p1, "typeMapping"    # Lnluparser/d;
    .param p2, "converterFactory"    # Lnluparser/b$a;
    .param p3, "classifierFactory"    # Lnluparser/a$a;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lnluparser/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Lnluparser/a$a;->a(Ljava/util/Map;)Lnluparser/a;

    move-result-object v1

    invoke-interface {p2, v1}, Lnluparser/b$a;->a(Lnluparser/a;)Lnluparser/b;

    move-result-object v1

    invoke-static {v1}, Lnluparser/MixtureProcessor;->checkConverterArguments(Lnluparser/b;)V

    iput-object v1, p0, Lnluparser/MixtureProcessor;->converter:Lnluparser/b;

    iput-object v0, p0, Lnluparser/MixtureProcessor;->serviceTypes:Ljava/util/Map;

    return-void
.end method

.method static checkConverterArguments(Lnluparser/b;)V
    .locals 3
    .param p0, "converter"    # Lnluparser/b;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v2

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-class v1, Lnluparser/scheme/Mixture;

    if-eq v0, v1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only parameter interface Converter<String, Mixture> definitions are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only parameter interface Converter<String, Mixture> definitions are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public from(Ljava/lang/String;)Lnluparser/scheme/Mixture;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnluparser/scheme/Mixture",
            "<TI;TR;>;I::",
            "Lnluparser/scheme/Intent;",
            "R::",
            "Lnluparser/scheme/Result;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnluparser/MixtureProcessor;->converter:Lnluparser/b;

    invoke-interface {v0, p1}, Lnluparser/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/Mixture;

    goto :goto_0
.end method

.method public getSupportedType()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/MixtureProcessor;->serviceTypes:Ljava/util/Map;

    return-object v0
.end method
