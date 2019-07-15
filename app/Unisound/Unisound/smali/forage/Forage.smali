.class public final Lforage/Forage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lforage/Forage$Key;
    }
.end annotation


# instance fields
.field private final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lforage/Forage$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final fieldFilter:Lforage/FieldFilter;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lforage/FieldFilter;)V
    .locals 2
    .param p2, "fieldFilter"    # Lforage/FieldFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lforage/FieldFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lforage/Forage;->MAP:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lforage/Forage;->clazz:Ljava/lang/Class;

    if-nez p2, :cond_1

    sget-object v0, Lforage/FieldFilter;->DEFAULT:Lforage/FieldFilter;

    iput-object v0, p0, Lforage/Forage;->fieldFilter:Lforage/FieldFilter;

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lforage/Forage;->fieldFilter:Lforage/FieldFilter;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Class;Lforage/FieldFilter;)Lforage/Forage;
    .locals 1
    .param p1, "fieldFilter"    # Lforage/FieldFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lforage/FieldFilter;",
            ")",
            "Lforage/Forage;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lforage/Forage;

    invoke-direct {v0, p0, p1}, Lforage/Forage;-><init>(Ljava/lang/Class;Lforage/FieldFilter;)V

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    iget-object v0, p0, Lforage/Forage;->MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public queryFieldName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lforage/Forage;->MAP:Ljava/util/Map;

    new-instance v1, Lforage/Forage$Key;

    invoke-direct {v1, p1}, Lforage/Forage$Key;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lforage/Forage;->MAP:Ljava/util/Map;

    new-instance v1, Lforage/Forage$Key;

    invoke-direct {v1, p1}, Lforage/Forage$Key;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lforage/Forage;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    iget-object v6, p0, Lforage/Forage;->fieldFilter:Lforage/FieldFilter;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v6, v7, v5, v8}, Lforage/FieldFilter;->accept(Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lforage/Forage;->MAP:Ljava/util/Map;

    new-instance v2, Lforage/Forage$Key;

    invoke-direct {v2, p1}, Lforage/Forage$Key;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
