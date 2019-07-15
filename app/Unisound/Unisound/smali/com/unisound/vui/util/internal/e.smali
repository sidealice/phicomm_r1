.class public abstract Lcom/unisound/vui/util/internal/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/internal/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/unisound/vui/util/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/unisound/vui/util/internal/e;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/util/internal/e$1;

    invoke-direct {v0}, Lcom/unisound/vui/util/internal/e$1;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/internal/e;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/unisound/vui/util/internal/b;

    invoke-direct {v0}, Lcom/unisound/vui/util/internal/b;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/internal/e;->b:Lcom/unisound/vui/util/internal/e;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/internal/e;->c:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/unisound/vui/util/internal/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/unisound/vui/util/internal/e;"
        }
    .end annotation

    sget-object v0, Lcom/unisound/vui/util/internal/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/internal/a;

    iget-object v1, v0, Lcom/unisound/vui/util/internal/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/internal/e;

    if-nez v0, :cond_2

    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    sget-object v0, Lcom/unisound/vui/util/internal/e;->b:Lcom/unisound/vui/util/internal/e;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/unisound/vui/util/internal/e$a;

    invoke-direct {v0, p0}, Lcom/unisound/vui/util/internal/e$a;-><init>(Ljava/lang/Class;)V

    :cond_1
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/internal/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unisound/vui/util/internal/e;"
        }
    .end annotation

    sget-object v0, Lcom/unisound/vui/util/internal/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/internal/a;

    iget-object v1, v0, Lcom/unisound/vui/util/internal/a;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/internal/e;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/unisound/vui/util/internal/e;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/internal/e;->a(Ljava/lang/Class;)Lcom/unisound/vui/util/internal/e;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot determine the type of the type parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_b

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    move v1, v3

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_c

    aget-object v6, v5, v1

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v4, :cond_3

    const-class v0, Ljava/lang/Object;

    :goto_3
    return-object v0

    :cond_3
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    :cond_4
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/Class;

    goto :goto_3

    :cond_5
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_6

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_6
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_7

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_7
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    if-nez v1, :cond_8

    const-class v0, Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v2

    move-object p1, v1

    goto/16 :goto_0

    :cond_9
    const-class v0, Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-static {v2, p2}, Lcom/unisound/vui/util/internal/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2, p2}, Lcom/unisound/vui/util/internal/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_c
    move v1, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Z
.end method
