.class public final Lorg/xutils/view/ViewInjectorImpl;
.super Ljava/lang/Object;
.source "ViewInjectorImpl.java"

# interfaces
.implements Lorg/xutils/ViewInjector;


# static fields
.field private static final IGNORED:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static volatile instance:Lorg/xutils/view/ViewInjectorImpl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    .line 40
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    const-class v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    :try_start_0
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    const-string v1, "android.support.v4.app.Fragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    const-string v1, "android.support.v4.app.FragmentActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->lock:Ljava/lang/Object;

    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/xutils/view/annotation/ContentView;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "thisCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    sget-object v1, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 131
    :cond_1
    :goto_0
    return-object v0

    .line 127
    :cond_2
    const-class v1, Lorg/xutils/view/annotation/ContentView;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/view/annotation/ContentView;

    .line 128
    .local v0, "contentView":Lorg/xutils/view/annotation/ContentView;
    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/view/ViewInjectorImpl;->findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v0

    goto :goto_0
.end method

.method private static injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V
    .locals 23
    .param p0, "handler"    # Ljava/lang/Object;
    .param p2, "finder"    # Lorg/xutils/view/ViewFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/view/ViewFinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    sget-object v18, Lorg/xutils/view/ViewInjectorImpl;->IGNORED:Ljava/util/HashSet;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 212
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 145
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 146
    .local v7, "fields":[Ljava/lang/reflect/Field;
    if-eqz v7, :cond_5

    array-length v0, v7

    move/from16 v18, v0

    if-lez v18, :cond_5

    .line 147
    array-length v0, v7

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v5, v7, v18

    .line 149
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 151
    .local v6, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v20

    if-nez v20, :cond_2

    .line 152
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v20

    if-nez v20, :cond_2

    .line 153
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-nez v20, :cond_2

    .line 154
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 147
    :cond_2
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 158
    :cond_3
    const-class v20, Lorg/xutils/view/annotation/ViewInject;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    check-cast v17, Lorg/xutils/view/annotation/ViewInject;

    .line 159
    .local v17, "viewInject":Lorg/xutils/view/annotation/ViewInject;
    if-eqz v17, :cond_2

    .line 161
    :try_start_0
    invoke-interface/range {v17 .. v17}, Lorg/xutils/view/annotation/ViewInject;->value()I

    move-result v20

    invoke-interface/range {v17 .. v17}, Lorg/xutils/view/annotation/ViewInject;->parentId()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v16

    .line 162
    .local v16, "view":Landroid/view/View;
    if-eqz v16, :cond_4

    .line 163
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 169
    .end local v16    # "view":Landroid/view/View;
    :catch_0
    move-exception v4

    .line 170
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 166
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v16    # "view":Landroid/view/View;
    :cond_4
    :try_start_1
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalid @ViewInject for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "view":Landroid/view/View;
    .end local v17    # "viewInject":Lorg/xutils/view/annotation/ViewInject;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    .line 178
    .local v11, "methods":[Ljava/lang/reflect/Method;
    if-eqz v11, :cond_0

    array-length v0, v11

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 179
    array-length v0, v11

    move/from16 v20, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v10, v11, v19

    .line 181
    .local v10, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez v18, :cond_6

    .line 182
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v18

    if-nez v18, :cond_7

    .line 179
    :cond_6
    :goto_3
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto :goto_2

    .line 187
    :cond_7
    const-class v18, Lorg/xutils/view/annotation/Event;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/xutils/view/annotation/Event;

    .line 188
    .local v3, "event":Lorg/xutils/view/annotation/Event;
    if-eqz v3, :cond_6

    .line 191
    :try_start_2
    invoke-interface {v3}, Lorg/xutils/view/annotation/Event;->value()[I

    move-result-object v15

    .line 192
    .local v15, "values":[I
    invoke-interface {v3}, Lorg/xutils/view/annotation/Event;->parentId()[I

    move-result-object v12

    .line 193
    .local v12, "parentIds":[I
    if-nez v12, :cond_9

    const/4 v13, 0x0

    .line 195
    .local v13, "parentIdsLen":I
    :goto_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 196
    aget v14, v15, v8

    .line 197
    .local v14, "value":I
    if-lez v14, :cond_8

    .line 198
    new-instance v9, Lorg/xutils/view/ViewInfo;

    invoke-direct {v9}, Lorg/xutils/view/ViewInfo;-><init>()V

    .line 199
    .local v9, "info":Lorg/xutils/view/ViewInfo;
    iput v14, v9, Lorg/xutils/view/ViewInfo;->value:I

    .line 200
    if-le v13, v8, :cond_a

    aget v18, v12, v8

    :goto_6
    move/from16 v0, v18

    iput v0, v9, Lorg/xutils/view/ViewInfo;->parentId:I

    .line 201
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 202
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v9, v3, v1, v10}, Lorg/xutils/view/EventListenerManager;->addEventMethod(Lorg/xutils/view/ViewFinder;Lorg/xutils/view/ViewInfo;Lorg/xutils/view/annotation/Event;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 195
    .end local v9    # "info":Lorg/xutils/view/ViewInfo;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 193
    .end local v8    # "i":I
    .end local v13    # "parentIdsLen":I
    .end local v14    # "value":I
    :cond_9
    array-length v13, v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 200
    .restart local v8    # "i":I
    .restart local v9    # "info":Lorg/xutils/view/ViewInfo;
    .restart local v13    # "parentIdsLen":I
    .restart local v14    # "value":I
    :cond_a
    const/16 v18, 0x0

    goto :goto_6

    .line 205
    .end local v8    # "i":I
    .end local v9    # "info":Lorg/xutils/view/ViewInfo;
    .end local v12    # "parentIds":[I
    .end local v13    # "parentIdsLen":I
    .end local v14    # "value":I
    .end local v15    # "values":[I
    :catch_1
    move-exception v4

    .line 206
    .restart local v4    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static registerInstance()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    if-nez v0, :cond_1

    .line 58
    sget-object v1, Lorg/xutils/view/ViewInjectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/xutils/view/ViewInjectorImpl;

    invoke-direct {v0}, Lorg/xutils/view/ViewInjectorImpl;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->instance:Lorg/xutils/view/ViewInjectorImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setViewInjector(Lorg/xutils/ViewInjector;)V

    .line 65
    return-void

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public inject(Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 103
    .local v2, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v2}, Lorg/xutils/view/ViewInjectorImpl;->findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v0

    .line 104
    .local v0, "contentView":Lorg/xutils/view/annotation/ContentView;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lorg/xutils/view/annotation/ContentView;->value()I

    move-result v4

    .line 106
    .local v4, "viewId":I
    if-lez v4, :cond_0

    .line 107
    const/4 v5, 0x0

    invoke-virtual {p2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    .end local v0    # "contentView":Lorg/xutils/view/annotation/ContentView;
    .end local v4    # "viewId":I
    :cond_0
    :goto_0
    new-instance v5, Lorg/xutils/view/ViewFinder;

    invoke-direct {v5, v3}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p1, v2, v5}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 117
    return-object v3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public inject(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 77
    .local v2, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v2}, Lorg/xutils/view/ViewInjectorImpl;->findContentView(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v0

    .line 78
    .local v0, "contentView":Lorg/xutils/view/annotation/ContentView;
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Lorg/xutils/view/annotation/ContentView;->value()I

    move-result v4

    .line 80
    .local v4, "viewId":I
    if-lez v4, :cond_0

    .line 81
    const-string v5, "setContentView"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    .local v3, "setContentViewMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "contentView":Lorg/xutils/view/annotation/ContentView;
    .end local v3    # "setContentViewMethod":Ljava/lang/reflect/Method;
    .end local v4    # "viewId":I
    :cond_0
    :goto_0
    new-instance v5, Lorg/xutils/view/ViewFinder;

    invoke-direct {v5, p1}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v2, v5}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public inject(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/view/ViewFinder;

    invoke-direct {v1, p1}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 70
    return-void
.end method

.method public inject(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/view/ViewFinder;

    invoke-direct {v1, p2}, Lorg/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lorg/xutils/view/ViewInjectorImpl;->injectObject(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/ViewFinder;)V

    .line 95
    return-void
.end method
