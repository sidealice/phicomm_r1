.class public final Ldagger/internal/loaders/ReflectiveAtInjectBinding;
.super Ldagger/internal/Binding;
.source "ReflectiveAtInjectBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/Binding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final fieldBindings:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation
.end field

.field private final fields:[Ljava/lang/reflect/Field;

.field private final keys:[Ljava/lang/String;

.field private final loader:Ljava/lang/ClassLoader;

.field private final parameterBindings:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation
.end field

.field private final supertype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private supertypeBinding:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;ILjava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p1, "provideKey"    # Ljava/lang/String;
    .param p2, "membersKey"    # Ljava/lang/String;
    .param p3, "singleton"    # Z
    .param p5, "fields"    # [Ljava/lang/reflect/Field;
    .param p7, "parameterCount"    # I
    .param p9, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;I",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p8, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 60
    iput-object p6, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object p5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    .line 62
    iput-object p8, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertype:Ljava/lang/Class;

    .line 63
    iput-object p9, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    .line 64
    new-array v0, p7, [Ldagger/internal/Binding;

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    .line 65
    array-length v0, p5

    new-array v0, v0, [Ldagger/internal/Binding;

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    .line 66
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    .line 67
    return-void
.end method

.method public static create(Ljava/lang/Class;Z)Ldagger/internal/Binding;
    .locals 23
    .param p1, "mustHaveInjections"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Ldagger/internal/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljavax/inject/Singleton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    .line 146
    .local v5, "singleton":Z
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v19, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v18, "injectedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v14, p0

    .local v14, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v14, v2, :cond_4

    .line 151
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .local v13, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v16, v13, v17

    .line 152
    .local v16, "field":Ljava/lang/reflect/Field;
    const-class v2, Ljavax/inject/Inject;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 156
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t inject private field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v2, v6, v0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    .end local v16    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    goto :goto_0

    .line 167
    .end local v13    # "arr$":[Ljava/lang/reflect/Field;
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    :cond_4
    const/4 v8, 0x0

    .line 168
    .local v8, "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-static/range {p0 .. p0}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->getConstructorsForType(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v13

    .local v13, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v0, v13

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v15, v13, v17

    .line 169
    .local v15, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const-class v2, Ljavax/inject/Inject;

    invoke-virtual {v15, v2}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 168
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 172
    :cond_5
    if-eqz v8, :cond_6

    .line 173
    new-instance v2, Ldagger/internal/Binding$InvalidBindingException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "has too many injectable constructors"

    invoke-direct {v2, v6, v7}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_6
    move-object v8, v15

    goto :goto_4

    .line 177
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_7
    if-nez v8, :cond_8

    .line 178
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 180
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 191
    :cond_8
    :goto_5
    if-eqz v8, :cond_b

    .line 192
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 193
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t inject private constructor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_9
    if-eqz p1, :cond_8

    .line 184
    new-instance v2, Ldagger/internal/Binding$InvalidBindingException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "has no injectable members. Do you want to add an injectable constructor?"

    invoke-direct {v2, v6, v7}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_a
    invoke-static/range {p0 .. p0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "provideKey":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 198
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v22

    .line 199
    .local v22, "types":[Ljava/lang/reflect/Type;
    move-object/from16 v0, v22

    array-length v9, v0

    .line 200
    .local v9, "parameterCount":I
    if-eqz v9, :cond_c

    .line 201
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v12

    .line 202
    .local v12, "annotations":[[Ljava/lang/annotation/Annotation;
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_6
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_c

    .line 203
    aget-object v2, v22, v21

    aget-object v6, v12, v21

    invoke-static {v2, v6, v8}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 207
    .end local v3    # "provideKey":Ljava/lang/String;
    .end local v9    # "parameterCount":I
    .end local v12    # "annotations":[[Ljava/lang/annotation/Annotation;
    .end local v21    # "p":I
    .end local v22    # "types":[Ljava/lang/reflect/Type;
    :cond_b
    const/4 v3, 0x0

    .line 208
    .restart local v3    # "provideKey":Ljava/lang/String;
    const/4 v9, 0x0

    .line 209
    .restart local v9    # "parameterCount":I
    if-eqz v5, :cond_c

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No injectable constructor on @Singleton "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 216
    .local v10, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    if-eqz v10, :cond_d

    .line 217
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/Keys;->isPlatformType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 218
    const/4 v10, 0x0

    .line 224
    :cond_d
    :goto_7
    invoke-static/range {p0 .. p0}, Ldagger/internal/Keys;->getMembersKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "membersKey":Ljava/lang/String;
    new-instance v2, Ldagger/internal/loaders/ReflectiveAtInjectBinding;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Field;

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/reflect/Field;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v11}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;ILjava/lang/Class;[Ljava/lang/String;)V

    return-object v2

    .line 220
    .end local v4    # "membersKey":Ljava/lang/String;
    :cond_e
    invoke-static {v10}, Ldagger/internal/Keys;->getMembersKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 181
    .end local v3    # "provideKey":Ljava/lang/String;
    .end local v9    # "parameterCount":I
    .end local v10    # "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :catch_0
    move-exception v2

    goto/16 :goto_5
.end method

.method private static getConstructorsForType(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    return-object v0
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 8
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 71
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    const/4 v7, 0x0

    .line 72
    .local v7, "k":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 73
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    aget-object v0, v0, v6

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    aget-object v2, v2, v6

    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1, v2, v3}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v1

    aput-object v1, v0, v6

    .line 76
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 72
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    .line 79
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 80
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    aget-object v0, v0, v6

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1, v2, v3}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v1

    aput-object v1, v0, v6

    .line 83
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 86
    :cond_3
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertype:Ljava/lang/Class;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    aget-object v1, v0, v7

    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->membersKey:Ljava/lang/String;

    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    .line 90
    :cond_4
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v5, :cond_0

    .line 94
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 96
    :cond_0
    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    array-length v5, v5

    new-array v0, v5, [Ljava/lang/Object;

    .line 97
    .local v0, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 98
    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    :try_start_0
    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 113
    .local v4, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v4}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->injectMembers(Ljava/lang/Object;)V

    .line 114
    return-object v4

    .line 103
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 105
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_2

    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    throw v1

    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v5

    goto :goto_1

    .line 108
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 110
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    .local p1, "get":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembers":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 120
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    aget-object v2, v2, v1

    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    invoke-virtual {v2, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->provideKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->provideKey:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->membersKey:Ljava/lang/String;

    goto :goto_0
.end method
