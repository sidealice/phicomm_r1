.class public final Lcom/google/gson/internal/a/d;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/p;


# instance fields
.field private final a:Lcom/google/gson/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/c;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/gson/internal/a/d;->a:Lcom/google/gson/internal/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/a/a;)Lcom/google/gson/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/d;",
            "Lcom/google/gson/a/a<",
            "TT;>;)",
            "Lcom/google/gson/o<",
            "TT;>;"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/JsonAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/a/d;->a:Lcom/google/gson/internal/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/gson/internal/a/d;->a(Lcom/google/gson/internal/c;Lcom/google/gson/d;Lcom/google/gson/a/a;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/o;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/google/gson/internal/c;Lcom/google/gson/d;Lcom/google/gson/a/a;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/c;",
            "Lcom/google/gson/d;",
            "Lcom/google/gson/a/a<",
            "*>;",
            "Lcom/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/google/gson/o<",
            "*>;"
        }
    .end annotation

    .line 55
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/a/a;->get(Ljava/lang/Class;)Lcom/google/gson/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/internal/c;->a(Lcom/google/gson/a/a;)Lcom/google/gson/internal/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/gson/internal/f;->a()Ljava/lang/Object;

    move-result-object p1

    .line 58
    instance-of v0, p1, Lcom/google/gson/o;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/google/gson/o;

    goto :goto_2

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/google/gson/p;

    if-eqz v0, :cond_1

    .line 61
    check-cast p1, Lcom/google/gson/p;

    invoke-interface {p1, p2, p3}, Lcom/google/gson/p;->a(Lcom/google/gson/d;Lcom/google/gson/a/a;)Lcom/google/gson/o;

    move-result-object p1

    goto :goto_2

    .line 62
    :cond_1
    instance-of v0, p1, Lcom/google/gson/n;

    if-nez v0, :cond_3

    instance-of v1, p1, Lcom/google/gson/h;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 63
    move-object v0, p1

    check-cast v0, Lcom/google/gson/n;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 66
    :goto_1
    instance-of v0, p1, Lcom/google/gson/h;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/google/gson/h;

    :cond_5
    move-object v4, v1

    .line 69
    new-instance p1, Lcom/google/gson/internal/a/l;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/gson/internal/a/l;-><init>(Lcom/google/gson/n;Lcom/google/gson/h;Lcom/google/gson/d;Lcom/google/gson/a/a;Lcom/google/gson/p;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 76
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/o;->a()Lcom/google/gson/o;

    move-result-object p1

    :cond_6
    return-object p1
.end method
