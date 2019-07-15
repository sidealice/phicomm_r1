.class public final Ldagger/internal/loaders/ReflectiveStaticInjection;
.super Ldagger/internal/StaticInjection;
.source "ReflectiveStaticInjection.java"


# instance fields
.field private bindings:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation
.end field

.field private final fields:[Ljava/lang/reflect/Field;

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>(Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "fields"    # [Ljava/lang/reflect/Field;

    .prologue
    .line 36
    invoke-direct {p0}, Ldagger/internal/StaticInjection;-><init>()V

    .line 37
    iput-object p2, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    .line 38
    iput-object p1, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->loader:Ljava/lang/ClassLoader;

    .line 39
    return-void
.end method

.method public static create(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "injectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 63
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Ljavax/inject/Inject;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No static injections: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_2
    new-instance v6, Ldagger/internal/loaders/ReflectiveStaticInjection;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Field;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Field;

    invoke-direct {v6, v7, v5}, Ldagger/internal/loaders/ReflectiveStaticInjection;-><init>(Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V

    return-object v6
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 42
    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    array-length v3, v3

    new-array v3, v3, [Ldagger/internal/Binding;

    iput-object v3, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->bindings:[Ldagger/internal/Binding;

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 44
    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    aget-object v0, v3, v1

    .line 45
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-static {v3, v4, v0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->bindings:[Ldagger/internal/Binding;

    iget-object v4, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2, v0, v4}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v4

    aput-object v4, v3, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public inject()V
    .locals 5

    .prologue
    .line 52
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iget-object v4, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->bindings:[Ldagger/internal/Binding;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    return-void
.end method
