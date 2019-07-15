.class public final Lbutterknife/internal/ButterKnifeProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "ButterKnifeProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ANDROID_PREFIX:Ljava/lang/String; = "android."

.field private static final COLOR_STATE_LIST_TYPE:Ljava/lang/String; = "android.content.res.ColorStateList"

.field private static final DRAWABLE_TYPE:Ljava/lang/String; = "android.graphics.drawable.Drawable"

.field private static final ITERABLE_TYPE:Ljava/lang/String; = "java.lang.Iterable<?>"

.field public static final JAVA_PREFIX:Ljava/lang/String; = "java."

.field private static final LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LIST_TYPE:Ljava/lang/String;

.field private static final NULLABLE_ANNOTATION_NAME:Ljava/lang/String; = "Nullable"

.field public static final SUFFIX:Ljava/lang/String; = "$$ViewBinder"

.field static final VIEW_TYPE:Ljava/lang/String; = "android.view.View"


# instance fields
.field private elementUtils:Ljavax/lang/model/util/Elements;

.field private filer:Ljavax/annotation/processing/Filer;

.field private typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    const-class v0, Lbutterknife/internal/ButterKnifeProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lbutterknife/internal/ButterKnifeProcessor;->$assertionsDisabled:Z

    .line 73
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbutterknife/internal/ButterKnifeProcessor;->LIST_TYPE:Ljava/lang/String;

    .line 74
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lbutterknife/OnCheckedChanged;

    aput-object v3, v0, v2

    const-class v2, Lbutterknife/OnClick;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lbutterknife/OnEditorAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lbutterknife/OnFocusChange;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lbutterknife/OnItemClick;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lbutterknife/OnItemLongClick;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lbutterknife/OnItemSelected;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lbutterknife/OnLongClick;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lbutterknife/OnPageChange;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lbutterknife/OnTextChanged;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lbutterknife/OnTouch;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method private doubleErasure(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 3
    .param p1, "elementType"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    .line 651
    iget-object v2, p0, Lbutterknife/internal/ButterKnifeProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v2, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "name":Ljava/lang/String;
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 653
    .local v1, "typeParamStart":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 654
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_0
    return-object v0
.end method

.method private varargs error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 961
    array-length v0, p3

    if-lez v0, :cond_0

    .line 962
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 964
    :cond_0
    iget-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 965
    return-void
.end method

.method private findAndParseListener(Ljavax/annotation/processing/RoundEnvironment;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)V
    .locals 8
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p4, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 664
    .local v1, "element":Ljavax/lang/model/element/Element;
    :try_start_0
    invoke-direct {p0, p2, v1, p3, p4}, Lbutterknife/internal/ButterKnifeProcessor;->parseListenerAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 667
    .local v2, "stackTrace":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 669
    const-string v4, "Unable to generate view binder for @%s.\n\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 670
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 669
    invoke-direct {p0, v1, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 673
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    .end local v2    # "stackTrace":Ljava/io/StringWriter;
    :cond_0
    return-void
.end method

.method private findAndParseTargets(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;
    .locals 11
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 143
    .local v6, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 146
    .local v3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v7, Lbutterknife/Bind;

    invoke-interface {p1, v7}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 148
    .local v1, "element":Ljavax/lang/model/element/Element;
    :try_start_0
    invoke-direct {p0, v1, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseBind(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-class v8, Lbutterknife/Bind;

    invoke-direct {p0, v1, v8, v0}, Lbutterknife/internal/ButterKnifeProcessor;->logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_0
    sget-object v7, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 156
    .local v4, "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1, v4, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->findAndParseListener(Ljavax/annotation/processing/RoundEnvironment;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_1

    .line 160
    .end local v4    # "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_1
    const-class v7, Lbutterknife/BindBool;

    invoke-interface {p1, v7}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 162
    .restart local v1    # "element":Ljavax/lang/model/element/Element;
    :try_start_1
    invoke-direct {p0, v1, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseResourceBool(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v8, Lbutterknife/BindBool;

    invoke-direct {p0, v1, v8, v0}, Lbutterknife/internal/ButterKnifeProcessor;->logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_2

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_2
    const-class v7, Lbutterknife/BindColor;

    invoke-interface {p1, v7}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 171
    .restart local v1    # "element":Ljavax/lang/model/element/Element;
    :try_start_2
    invoke-direct {p0, v1, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseResourceColor(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 172
    :catch_2
    move-exception v0

    .line 173
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v8, Lbutterknife/BindColor;

    invoke-direct {p0, v1, v8, v0}, Lbutterknife/internal/ButterKnifeProcessor;->logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_3

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_3
    const-class v7, Lbutterknife/BindDimen;

    invoke-interface {p1, v7}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 180
    .restart local v1    # "element":Ljavax/lang/model/element/Element;
    :try_start_3
    invoke-direct {p0, v1, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseResourceDimen(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 181
    :catch_3
    move-exception v0

    .line 182
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v8, Lbutterknife/BindDimen;

    invoke-direct {p0, v1, v8, v0}, Lbutterknife/internal/ButterKnifeProcessor;->logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_4

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_4
    const-class v7, Lbutterknife/BindDrawable;

    invoke-interface {p1, v7}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 189
    .restart local v1    # "element":Ljavax/lang/model/element/Element;
    :try_start_4
    invoke-direct {p0, v1, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseResourceDrawable(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 190
    :catch_4
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v8, Lbutterknife/BindDrawable;

    invoke-direct {p0, v1, v8, v0}, Lbutterknife/internal/ButterKnifeProcessor;->logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_5

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_5
    const-class v7, Lbutterknife/BindInt;

    invoke-interface {p1, v7}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 198
    .restart local v1    # "element":Ljavax/lang/model/element/Element;
    :try_start_5
    invoke-direct {p0, v1, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseResourceInt(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 199
    :catch_5
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v8, Lbutterknife/BindInt;

    invoke-direct {p0, v1, v8, v0}, Lbutterknife/internal/ButterKnifeProcessor;->logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_6

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_6
    const-class v7, Lbutterknife/BindString;

    invoke-interface {p1, v7}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 207
    .restart local v1    # "element":Ljavax/lang/model/element/Element;
    :try_start_6
    invoke-direct {p0, v1, v6, v3}, Lbutterknife/internal/ButterKnifeProcessor;->parseResourceString(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    .line 208
    :catch_6
    move-exception v0

    .line 209
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v8, Lbutterknife/BindString;

    invoke-direct {p0, v1, v8, v0}, Lbutterknife/internal/ButterKnifeProcessor;->logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_7

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 215
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v7, v3}, Lbutterknife/internal/ButterKnifeProcessor;->findParentFqcn(Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "parentClassFqcn":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 217
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbutterknife/internal/BindingClass;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$$ViewBinder"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lbutterknife/internal/BindingClass;->setParentViewBinder(Ljava/lang/String;)V

    goto :goto_8

    .line 221
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .end local v5    # "parentClassFqcn":Ljava/lang/String;
    :cond_9
    return-object v6
.end method

.method private static findDuplicate([I)Ljava/lang/Integer;
    .locals 5
    .param p0, "array"    # [I

    .prologue
    .line 638
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 640
    .local v1, "seenElements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 641
    .local v0, "element":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 642
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 646
    .end local v0    # "element":I
    :goto_1
    return-object v2

    .line 640
    .restart local v0    # "element":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "element":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findParentFqcn(Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .param p1, "typeElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 944
    .local p2, "parents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 945
    .local v1, "type":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    .line 946
    const/4 v2, 0x0

    .line 951
    .end local v1    # "type":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    return-object v2

    .line 948
    .restart local v1    # "type":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    .end local v1    # "type":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    .end local p1    # "typeElement":Ljavax/lang/model/element/TypeElement;
    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 949
    .restart local p1    # "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    invoke-direct {p0, p1}, Lbutterknife/internal/ButterKnifeProcessor;->getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v0}, Lbutterknife/internal/ButterKnifeProcessor;->getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 936
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 937
    .local v0, "packageLen":I
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;
    .locals 6
    .param p2, "enclosingElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lbutterknife/internal/BindingClass;"
        }
    .end annotation

    .prologue
    .line 923
    .local p1, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/BindingClass;

    .line 924
    .local v0, "bindingClass":Lbutterknife/internal/BindingClass;
    if-nez v0, :cond_0

    .line 925
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, "targetType":Ljava/lang/String;
    invoke-direct {p0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "classPackage":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, v2}, Lbutterknife/internal/ButterKnifeProcessor;->getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$$ViewBinder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "className":Ljava/lang/String;
    new-instance v0, Lbutterknife/internal/BindingClass;

    .end local v0    # "bindingClass":Lbutterknife/internal/BindingClass;
    invoke-direct {v0, v2, v1, v3}, Lbutterknife/internal/BindingClass;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .restart local v0    # "bindingClass":Lbutterknife/internal/BindingClass;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "classPackage":Ljava/lang/String;
    .end local v3    # "targetType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/element/TypeElement;

    .prologue
    .line 968
    iget-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getPackageOf(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasAnnotationWithName(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z
    .locals 4
    .param p0, "element"    # Ljavax/lang/model/element/Element;
    .param p1, "simpleName"    # Ljava/lang/String;

    .prologue
    .line 972
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 973
    .local v1, "mirror":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "annotationName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    const/4 v2, 0x1

    .line 978
    .end local v0    # "annotationName":Ljava/lang/String;
    .end local v1    # "mirror":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z
    .locals 7
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 266
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 267
    .local v0, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "qualifiedName":Ljava/lang/String;
    const-string v4, "android."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    const-string v4, "@%s-annotated class incorrectly in Android framework package. (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    .line 271
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    .line 270
    invoke-direct {p0, p2, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :goto_0
    return v2

    .line 274
    :cond_0
    const-string v4, "java."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    const-string v4, "@%s-annotated class incorrectly in Java framework package. (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    .line 276
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    .line 275
    invoke-direct {p0, p2, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 280
    goto :goto_0
.end method

.method private isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z
    .locals 11
    .param p2, "targetThing"    # Ljava/lang/String;
    .param p3, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/Element;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "hasError":Z
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 237
    .local v0, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    .line 238
    .local v2, "modifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    sget-object v3, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    :cond_0
    const-string v3, "@%s %s must not be private or static. (%s.%s)"

    new-array v4, v10, [Ljava/lang/Object;

    .line 240
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v8

    .line 241
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v9

    .line 239
    invoke-direct {p0, p3, v3, v4}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v1, 0x1

    .line 246
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_2

    .line 247
    const-string v3, "@%s %s may only be contained in classes. (%s.%s)"

    new-array v4, v10, [Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v8

    .line 249
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v9

    .line 247
    invoke-direct {p0, v0, v3, v4}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    const/4 v1, 0x1

    .line 254
    :cond_2
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    const-string v3, "@%s %s may not be contained in private classes. (%s.%s)"

    new-array v4, v10, [Ljava/lang/Object;

    .line 256
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v8

    .line 257
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    aput-object v5, v4, v9

    .line 255
    invoke-direct {p0, v0, v3, v4}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    const/4 v1, 0x1

    .line 261
    :cond_3
    return v1
.end method

.method private isInterface(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    const/4 v0, 0x0

    .line 875
    instance-of v1, p1, Ljavax/lang/model/type/DeclaredType;

    if-nez v1, :cond_1

    .line 878
    .end local p1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    .end local p1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isRequiredBinding(Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 982
    const-string v0, "Nullable"

    invoke-static {p0, v0}, Lbutterknife/internal/ButterKnifeProcessor;->hasAnnotationWithName(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z
    .locals 12
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "otherType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 882
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v8

    .line 885
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v10

    sget-object v11, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v10, v11, :cond_2

    move v8, v9

    .line 886
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 888
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 889
    .local v0, "declaredType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    .line 890
    .local v5, "typeArguments":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    .local v7, "typeString":Ljava/lang/StringBuilder;
    const/16 v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 894
    if-lez v2, :cond_3

    .line 895
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 897
    :cond_3
    const/16 v10, 0x3f

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 899
    :cond_4
    const/16 v10, 0x3e

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 904
    .end local v2    # "i":I
    .end local v7    # "typeString":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 905
    .local v1, "element":Ljavax/lang/model/element/Element;
    instance-of v10, v1, Ljavax/lang/model/element/TypeElement;

    if-nez v10, :cond_6

    move v8, v9

    .line 906
    goto :goto_0

    :cond_6
    move-object v6, v1

    .line 908
    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 909
    .local v6, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 910
    .local v4, "superType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v4, p2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 913
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    .line 914
    .local v3, "interfaceType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v3, p2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_0

    .end local v3    # "interfaceType":Ljavax/lang/model/type/TypeMirror;
    :cond_8
    move v8, v9

    .line 918
    goto/16 :goto_0
.end method

.method private logParsingError(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 227
    .local v0, "stackTrace":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p3, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 228
    const-string v1, "Unable to parse @%s binding.\n\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {p0, p1, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method private parseBind(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 5
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v1, Lbutterknife/Bind;

    const-string v2, "fields"

    invoke-direct {p0, v1, v2, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lbutterknife/Bind;

    .line 287
    invoke-direct {p0, v1, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 292
    .local v0, "elementType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lbutterknife/internal/ButterKnifeProcessor;->parseBindMany(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0

    .line 294
    :cond_2
    sget-object v1, Lbutterknife/internal/ButterKnifeProcessor;->LIST_TYPE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbutterknife/internal/ButterKnifeProcessor;->doubleErasure(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lbutterknife/internal/ButterKnifeProcessor;->parseBindMany(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0

    .line 296
    :cond_3
    const-string v1, "java.lang.Iterable<?>"

    invoke-direct {p0, v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    const-string v2, "@%s must be a List or array. (%s.%s)"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v4, Lbutterknife/Bind;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    .line 298
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    .line 299
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    aput-object v4, v3, v1

    .line 297
    invoke-direct {p0, p1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lbutterknife/internal/ButterKnifeProcessor;->parseBindOne(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private parseBindMany(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 25
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 367
    .local v12, "hasError":Z
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/TypeElement;

    .line 370
    .local v10, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 371
    .local v9, "elementType":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lbutterknife/internal/ButterKnifeProcessor;->doubleErasure(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v11

    .line 372
    .local v11, "erasedType":Ljava/lang/String;
    const/16 v20, 0x0

    .line 373
    .local v20, "viewType":Ljavax/lang/model/type/TypeMirror;
    const/4 v14, 0x0

    .line 374
    .local v14, "kind":Lbutterknife/internal/FieldCollectionViewBinding$Kind;
    invoke-interface {v9}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v21

    sget-object v22, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object v4, v9

    .line 375
    check-cast v4, Ljavax/lang/model/type/ArrayType;

    .line 376
    .local v4, "arrayType":Ljavax/lang/model/type/ArrayType;
    invoke-interface {v4}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v20

    .line 377
    sget-object v14, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->ARRAY:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    .line 393
    .end local v4    # "arrayType":Ljavax/lang/model/type/ArrayType;
    :goto_0
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v21

    sget-object v22, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v19, v20

    .line 394
    check-cast v19, Ljavax/lang/model/type/TypeVariable;

    .line 395
    .local v19, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface/range {v19 .. v19}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v20

    .line 399
    .end local v19    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_0
    if-eqz v20, :cond_1

    const-string v21, "android.view.View"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 400
    const-string v21, "@%s List or array type must extend from View or be an interface. (%s.%s)"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Lbutterknife/Bind;

    .line 401
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    const/4 v12, 0x1

    .line 405
    :cond_1
    if-eqz v12, :cond_5

    .line 433
    :goto_1
    return-void

    .line 378
    :cond_2
    sget-object v21, Lbutterknife/internal/ButterKnifeProcessor;->LIST_TYPE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object v7, v9

    .line 379
    check-cast v7, Ljavax/lang/model/type/DeclaredType;

    .line 380
    .local v7, "declaredType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v7}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v18

    .line 381
    .local v18, "typeArguments":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 382
    const-string v21, "@%s List must have a generic component. (%s.%s)"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Lbutterknife/Bind;

    .line 383
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    .line 384
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    const/4 v12, 0x1

    .line 389
    :goto_2
    sget-object v14, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->LIST:Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    .line 390
    goto/16 :goto_0

    .line 387
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "viewType":Ljavax/lang/model/type/TypeMirror;
    check-cast v20, Ljavax/lang/model/type/TypeMirror;

    .restart local v20    # "viewType":Ljavax/lang/model/type/TypeMirror;
    goto :goto_2

    .line 391
    .end local v7    # "declaredType":Ljavax/lang/model/type/DeclaredType;
    .end local v18    # "typeArguments":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    :cond_4
    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 410
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 411
    .local v15, "name":Ljava/lang/String;
    const-class v21, Lbutterknife/Bind;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lbutterknife/Bind;

    invoke-interface/range {v21 .. v21}, Lbutterknife/Bind;->value()[I

    move-result-object v13

    .line 412
    .local v13, "ids":[I
    array-length v0, v13

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 413
    const-string v21, "@%s must specify at least one ID. (%s.%s)"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Lbutterknife/Bind;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 414
    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 418
    :cond_6
    invoke-static {v13}, Lbutterknife/internal/ButterKnifeProcessor;->findDuplicate([I)Ljava/lang/Integer;

    move-result-object v8

    .line 419
    .local v8, "duplicateId":Ljava/lang/Integer;
    if-eqz v8, :cond_7

    .line 420
    const-string v21, "@%s annotation contains duplicate ID %d. (%s.%s)"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Lbutterknife/Bind;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v8, v22, v23

    const/16 v23, 0x2

    .line 421
    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_7
    sget-boolean v21, Lbutterknife/internal/ButterKnifeProcessor;->$assertionsDisabled:Z

    if-nez v21, :cond_8

    if-nez v20, :cond_8

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 425
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v17

    .line 426
    .local v17, "type":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lbutterknife/internal/ButterKnifeProcessor;->isRequiredBinding(Ljavax/lang/model/element/Element;)Z

    move-result v16

    .line 428
    .local v16, "required":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v6

    .line 429
    .local v6, "bindingClass":Lbutterknife/internal/BindingClass;
    new-instance v5, Lbutterknife/internal/FieldCollectionViewBinding;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v5, v15, v0, v14, v1}, Lbutterknife/internal/FieldCollectionViewBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lbutterknife/internal/FieldCollectionViewBinding$Kind;Z)V

    .line 430
    .local v5, "binding":Lbutterknife/internal/FieldCollectionViewBinding;
    invoke-virtual {v6, v13, v5}, Lbutterknife/internal/BindingClass;->addFieldCollection([ILbutterknife/internal/FieldCollectionViewBinding;)V

    .line 432
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private parseBindOne(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 22
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 308
    .local v9, "hasError":Z
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/TypeElement;

    .line 311
    .local v7, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 312
    .local v6, "elementType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v6}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v18

    sget-object v19, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v16, v6

    .line 313
    check-cast v16, Ljavax/lang/model/type/TypeVariable;

    .line 314
    .local v16, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface/range {v16 .. v16}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 316
    .end local v16    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_0
    const-string v18, "android.view.View"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 317
    const-string v18, "@%s fields must extend from View or be an interface. (%s.%s)"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Lbutterknife/Bind;

    .line 318
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-interface {v7}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const/4 v9, 0x1

    .line 323
    :cond_1
    const-class v18, Lbutterknife/Bind;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lbutterknife/Bind;

    invoke-interface/range {v18 .. v18}, Lbutterknife/Bind;->value()[I

    move-result-object v11

    .line 324
    .local v11, "ids":[I
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 325
    const-string v18, "@%s for a view must only specify one ID. Found: %s. (%s.%s)"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Lbutterknife/Bind;

    .line 326
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-interface {v7}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    .line 327
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    const/4 v9, 0x1

    .line 331
    :cond_2
    if-eqz v9, :cond_3

    .line 362
    :goto_0
    return-void

    .line 335
    :cond_3
    const/16 v18, 0x0

    aget v10, v11, v18

    .line 336
    .local v10, "id":I
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbutterknife/internal/BindingClass;

    .line 337
    .local v5, "bindingClass":Lbutterknife/internal/BindingClass;
    if-eqz v5, :cond_4

    .line 338
    invoke-virtual {v5, v10}, Lbutterknife/internal/BindingClass;->getViewBinding(I)Lbutterknife/internal/ViewBindings;

    move-result-object v17

    .line 339
    .local v17, "viewBindings":Lbutterknife/internal/ViewBindings;
    if-eqz v17, :cond_5

    .line 340
    invoke-virtual/range {v17 .. v17}, Lbutterknife/internal/ViewBindings;->getFieldBindings()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 341
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/FieldViewBinding;>;"
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 342
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbutterknife/internal/FieldViewBinding;

    .line 343
    .local v8, "existingBinding":Lbutterknife/internal/FieldViewBinding;
    const-string v18, "Attempt to use @%s for an already bound ID %d on \'%s\'. (%s.%s)"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Lbutterknife/Bind;

    .line 344
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v8}, Lbutterknife/internal/FieldViewBinding;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    .line 345
    invoke-interface {v7}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v21

    aput-object v21, v19, v20

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    .end local v8    # "existingBinding":Lbutterknife/internal/FieldViewBinding;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/FieldViewBinding;>;"
    .end local v17    # "viewBindings":Lbutterknife/internal/ViewBindings;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v5

    .line 353
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 354
    .local v13, "name":Ljava/lang/String;
    invoke-interface {v6}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v15

    .line 355
    .local v15, "type":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lbutterknife/internal/ButterKnifeProcessor;->isRequiredBinding(Ljavax/lang/model/element/Element;)Z

    move-result v14

    .line 357
    .local v14, "required":Z
    new-instance v4, Lbutterknife/internal/FieldViewBinding;

    invoke-direct {v4, v13, v15, v14}, Lbutterknife/internal/FieldViewBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 358
    .local v4, "binding":Lbutterknife/internal/FieldViewBinding;
    invoke-virtual {v5, v10, v4}, Lbutterknife/internal/BindingClass;->addField(ILbutterknife/internal/FieldViewBinding;)V

    .line 361
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private parseListenerAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 42
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p4, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/lang/model/element/ExecutableElement;

    move/from16 v36, v0

    if-eqz v36, :cond_0

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v36

    sget-object v37, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_1

    .line 680
    :cond_0
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "@%s annotation must be on a method."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 681
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    :cond_1
    move-object/from16 v14, p2

    .line 684
    check-cast v14, Ljavax/lang/model/element/ExecutableElement;

    .line 685
    .local v14, "executableElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v13

    check-cast v13, Ljavax/lang/model/element/TypeElement;

    .line 688
    .local v13, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 689
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    const-string v36, "value"

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 690
    .local v6, "annotationValue":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v36

    const-class v37, [I

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_2

    .line 691
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "@%s annotation value() type not int[]."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object p1, v38, v39

    .line 692
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 695
    :cond_2
    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v6, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [I

    move-object/from16 v18, v36

    check-cast v18, [I

    .line 696
    .local v18, "ids":[I
    invoke-interface {v14}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    .line 697
    .local v27, "name":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lbutterknife/internal/ButterKnifeProcessor;->isRequiredBinding(Ljavax/lang/model/element/Element;)Z

    move-result v32

    .line 700
    .local v32, "required":Z
    const-string v36, "methods"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v15

    .line 701
    .local v15, "hasError":Z
    invoke-direct/range {p0 .. p2}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v36

    or-int v15, v15, v36

    .line 703
    invoke-static/range {v18 .. v18}, Lbutterknife/internal/ButterKnifeProcessor;->findDuplicate([I)Ljava/lang/Integer;

    move-result-object v12

    .line 704
    .local v12, "duplicateId":Ljava/lang/Integer;
    if-eqz v12, :cond_3

    .line 705
    const-string v36, "@%s annotation for method contains duplicate ID %d. (%s.%s)"

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 706
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v12, v37, v38

    const/16 v38, 0x2

    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    .line 707
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    const/4 v15, 0x1

    .line 711
    :cond_3
    const-class v36, Lbutterknife/internal/ListenerClass;

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lbutterknife/internal/ListenerClass;

    .line 712
    .local v20, "listener":Lbutterknife/internal/ListenerClass;
    if-nez v20, :cond_4

    .line 713
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "No @%s defined on @%s."

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-class v40, Lbutterknife/internal/ListenerClass;

    .line 714
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    .line 715
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 714
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 718
    :cond_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v37, v0

    const/16 v36, 0x0

    :goto_0
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_8

    aget v17, v18, v36

    .line 719
    .local v17, "id":I
    const/16 v38, -0x1

    move/from16 v0, v17

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    .line 720
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 721
    if-nez v32, :cond_5

    .line 722
    const-string v38, "ID-free binding must not be annotated with @Nullable. (%s.%s)"

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 723
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    const/4 v15, 0x1

    .line 728
    :cond_5
    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v34

    .line 729
    .local v34, "targetType":Ljava/lang/String;
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_6

    .line 730
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v38

    if-nez v38, :cond_6

    .line 731
    const-string v38, "@%s annotation without an ID may only be used with an object of type \"%s\" or an interface. (%s.%s)"

    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 733
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    aput-object v34, v39, v40

    const/16 v40, 0x2

    .line 734
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x3

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    .line 731
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    const/4 v15, 0x1

    .line 718
    .end local v34    # "targetType":Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_0

    .line 738
    :cond_7
    const-string v38, "@%s annotation contains invalid ID %d. (%s.%s)"

    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 739
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x2

    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x3

    .line 740
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v41

    aput-object v41, v39, v40

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    const/4 v15, 0x1

    goto :goto_1

    .line 747
    .end local v17    # "id":I
    :cond_8
    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v26

    .line 748
    .local v26, "methods":[Lbutterknife/internal/ListenerMethod;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_9

    .line 749
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "Multiple listener methods specified on @%s."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 750
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 749
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 751
    :cond_9
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    .line 752
    invoke-interface/range {v20 .. v20}, Lbutterknife/internal/ListenerClass;->callbacks()Ljava/lang/Class;

    move-result-object v36

    const-class v37, Lbutterknife/internal/ListenerClass$NONE;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_a

    .line 753
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "Both method() and callback() defined on @%s."

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 755
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 754
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 757
    :cond_a
    const/16 v36, 0x0

    aget-object v21, v26, v36

    .line 772
    .local v21, "method":Lbutterknife/internal/ListenerMethod;
    :cond_b
    invoke-interface {v14}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v25

    .line 773
    .local v25, "methodParameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v36

    invoke-interface/range {v21 .. v21}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_c

    .line 774
    const-string v36, "@%s methods can have at most %s parameter(s). (%s.%s)"

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 775
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-interface/range {v21 .. v21}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    .line 776
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    const/4 v15, 0x1

    .line 781
    :cond_c
    invoke-interface {v14}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v33

    .line 782
    .local v33, "returnType":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v0, v33

    instance-of v0, v0, Ljavax/lang/model/type/TypeVariable;

    move/from16 v36, v0

    if-eqz v36, :cond_d

    move-object/from16 v35, v33

    .line 783
    check-cast v35, Ljavax/lang/model/type/TypeVariable;

    .line 784
    .local v35, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface/range {v35 .. v35}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v33

    .line 786
    .end local v35    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_d
    invoke-interface/range {v33 .. v33}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v21 .. v21}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_e

    .line 787
    const-string v36, "@%s methods must have a \'%s\' return type. (%s.%s)"

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 788
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-interface/range {v21 .. v21}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    .line 789
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x3

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    const/4 v15, 0x1

    .line 793
    :cond_e
    if-eqz v15, :cond_10

    .line 872
    :goto_2
    return-void

    .line 759
    .end local v21    # "method":Lbutterknife/internal/ListenerMethod;
    .end local v25    # "methodParameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    .end local v33    # "returnType":Ljavax/lang/model/type/TypeMirror;
    :cond_f
    const-string v36, "callback"

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 760
    .local v5, "annotationCallback":Ljava/lang/reflect/Method;
    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Enum;

    .line 761
    .local v10, "callback":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v10}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v36

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 762
    .local v11, "callbackField":Ljava/lang/reflect/Field;
    const-class v36, Lbutterknife/internal/ListenerMethod;

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lbutterknife/internal/ListenerMethod;

    .line 763
    .restart local v21    # "method":Lbutterknife/internal/ListenerMethod;
    if-nez v21, :cond_b

    .line 764
    new-instance v36, Ljava/lang/IllegalStateException;

    const-string v37, "No @%s defined on @%s\'s %s.%s."

    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-class v40, Lbutterknife/internal/ListenerMethod;

    .line 765
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    .line 766
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x2

    invoke-virtual {v10}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x3

    .line 767
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 765
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 797
    .end local v5    # "annotationCallback":Ljava/lang/reflect/Method;
    .end local v10    # "callback":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v11    # "callbackField":Ljava/lang/reflect/Field;
    .restart local v25    # "methodParameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    .restart local v33    # "returnType":Ljavax/lang/model/type/TypeMirror;
    :cond_10
    sget-object v31, Lbutterknife/internal/Parameter;->NONE:[Lbutterknife/internal/Parameter;

    .line 798
    .local v31, "parameters":[Lbutterknife/internal/Parameter;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_1a

    .line 799
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Lbutterknife/internal/Parameter;

    move-object/from16 v31, v0

    .line 800
    new-instance v24, Ljava/util/BitSet;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v36

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 801
    .local v24, "methodParameterUsed":Ljava/util/BitSet;
    invoke-interface/range {v21 .. v21}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v30

    .line 802
    .local v30, "parameterTypes":[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    .line 803
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavax/lang/model/element/VariableElement;

    .line 804
    .local v22, "methodParameter":Ljavax/lang/model/element/VariableElement;
    invoke-interface/range {v22 .. v22}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v23

    .line 805
    .local v23, "methodParameterType":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v0, v23

    instance-of v0, v0, Ljavax/lang/model/type/TypeVariable;

    move/from16 v36, v0

    if-eqz v36, :cond_11

    move-object/from16 v35, v23

    .line 806
    check-cast v35, Ljavax/lang/model/type/TypeVariable;

    .line 807
    .restart local v35    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface/range {v35 .. v35}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v23

    .line 810
    .end local v35    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    :cond_11
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_4
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v19

    move/from16 v1, v36

    if-ge v0, v1, :cond_15

    .line 811
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 810
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 814
    :cond_13
    aget-object v36, v30, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_14

    .line 815
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 816
    :cond_14
    new-instance v36, Lbutterknife/internal/Parameter;

    invoke-interface/range {v23 .. v23}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move/from16 v1, v19

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/Parameter;-><init>(ILjava/lang/String;)V

    aput-object v36, v31, v16

    .line 817
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 821
    :cond_15
    aget-object v36, v31, v16

    if-nez v36, :cond_19

    .line 822
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .local v9, "builder":Ljava/lang/StringBuilder;
    const-string v36, "Unable to match @"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 824
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " method arguments. ("

    .line 825
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 826
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x2e

    .line 827
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 828
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x29

    .line 829
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v19

    move/from16 v1, v36

    if-ge v0, v1, :cond_17

    .line 831
    aget-object v28, v31, v19

    .line 832
    .local v28, "parameter":Lbutterknife/internal/Parameter;
    const-string v36, "\n\n  Parameter #"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    add-int/lit8 v37, v19, 0x1

    .line 833
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    .line 834
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 835
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljavax/lang/model/element/VariableElement;

    invoke-interface/range {v36 .. v36}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n    "

    .line 836
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    if-nez v28, :cond_16

    .line 838
    const-string v36, "did not match any listener parameters"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 840
    :cond_16
    const-string v36, "matched listener parameter #"

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 841
    invoke-virtual/range {v28 .. v28}, Lbutterknife/internal/Parameter;->getListenerPosition()I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    .line 842
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 843
    invoke-virtual/range {v28 .. v28}, Lbutterknife/internal/Parameter;->getType()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 846
    .end local v28    # "parameter":Lbutterknife/internal/Parameter;
    :cond_17
    const-string v36, "\n\nMethods may have up to "

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 847
    invoke-interface/range {v21 .. v21}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " parameter(s):\n"

    .line 848
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-interface/range {v21 .. v21}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v38, v0

    const/16 v36, 0x0

    :goto_7
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    aget-object v29, v37, v36

    .line 850
    .local v29, "parameterType":Ljava/lang/String;
    const-string v39, "\n  "

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .line 852
    .end local v29    # "parameterType":Ljava/lang/String;
    :cond_18
    const-string v36, "\n\nThese may be listed in any order but will be searched for from top to bottom."

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v14, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 802
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 860
    .end local v16    # "i":I
    .end local v19    # "j":I
    .end local v22    # "methodParameter":Ljavax/lang/model/element/VariableElement;
    .end local v23    # "methodParameterType":Ljavax/lang/model/type/TypeMirror;
    .end local v24    # "methodParameterUsed":Ljava/util/BitSet;
    .end local v30    # "parameterTypes":[Ljava/lang/String;
    :cond_1a
    new-instance v7, Lbutterknife/internal/MethodViewBinding;

    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move/from16 v2, v32

    invoke-direct {v7, v0, v1, v2}, Lbutterknife/internal/MethodViewBinding;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 861
    .local v7, "binding":Lbutterknife/internal/MethodViewBinding;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v8

    .line 862
    .local v8, "bindingClass":Lbutterknife/internal/BindingClass;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v37, v0

    const/16 v36, 0x0

    :goto_8
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1c

    aget v17, v18, v36

    .line 863
    .restart local v17    # "id":I
    move/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2, v7}, Lbutterknife/internal/BindingClass;->addMethod(ILbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/MethodViewBinding;)Z

    move-result v38

    if-nez v38, :cond_1b

    .line 864
    const-string v36, "Multiple listener methods with return value specified for ID %d. (%s.%s)"

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 865
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x2

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v39

    aput-object v39, v37, v38

    .line 864
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 862
    :cond_1b
    add-int/lit8 v36, v36, 0x1

    goto :goto_8

    .line 871
    .end local v17    # "id":I
    :cond_1c
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private parseResourceBool(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 10
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 438
    .local v3, "hasError":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 441
    .local v2, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    if-eq v6, v7, :cond_0

    .line 442
    const-string v6, "@%s field type must be \'boolean\'. (%s.%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-class v9, Lbutterknife/BindBool;

    .line 443
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 444
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    .line 442
    invoke-direct {p0, p1, v6, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    const/4 v3, 0x1

    .line 449
    :cond_0
    const-class v6, Lbutterknife/BindBool;

    const-string v7, "fields"

    invoke-direct {p0, v6, v7, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 450
    const-class v6, Lbutterknife/BindBool;

    invoke-direct {p0, v6, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 452
    if-eqz v3, :cond_1

    .line 465
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, "name":Ljava/lang/String;
    const-class v6, Lbutterknife/BindBool;

    invoke-interface {p1, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lbutterknife/BindBool;

    invoke-interface {v6}, Lbutterknife/BindBool;->value()I

    move-result v4

    .line 460
    .local v4, "id":I
    invoke-direct {p0, p2, v2}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v1

    .line 461
    .local v1, "bindingClass":Lbutterknife/internal/BindingClass;
    new-instance v0, Lbutterknife/internal/FieldResourceBinding;

    const-string v6, "getBoolean"

    invoke-direct {v0, v4, v5, v6}, Lbutterknife/internal/FieldResourceBinding;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    .local v0, "binding":Lbutterknife/internal/FieldResourceBinding;
    invoke-virtual {v1, v0}, Lbutterknife/internal/BindingClass;->addResource(Lbutterknife/internal/FieldResourceBinding;)V

    .line 464
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseResourceColor(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 12
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 470
    .local v4, "hasError":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 473
    .local v3, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    const/4 v6, 0x0

    .line 474
    .local v6, "isColorStateList":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 475
    .local v2, "elementType":Ljavax/lang/model/type/TypeMirror;
    const-string v8, "android.content.res.ColorStateList"

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 476
    const/4 v6, 0x1

    .line 485
    :cond_0
    :goto_0
    const-class v8, Lbutterknife/BindColor;

    const-string v9, "fields"

    invoke-direct {p0, v8, v9, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 486
    const-class v8, Lbutterknife/BindColor;

    invoke-direct {p0, v8, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 488
    if-eqz v4, :cond_2

    .line 502
    :goto_1
    return-void

    .line 477
    :cond_1
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    if-eq v8, v9, :cond_0

    .line 478
    const-string v8, "@%s field type must be \'int\' or \'ColorStateList\'. (%s.%s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-class v11, Lbutterknife/BindColor;

    .line 479
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 480
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v11

    aput-object v11, v9, v10

    .line 478
    invoke-direct {p0, p1, v8, v9}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    const/4 v4, 0x1

    goto :goto_0

    .line 493
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "name":Ljava/lang/String;
    const-class v8, Lbutterknife/BindColor;

    invoke-interface {p1, v8}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lbutterknife/BindColor;

    invoke-interface {v8}, Lbutterknife/BindColor;->value()I

    move-result v5

    .line 496
    .local v5, "id":I
    invoke-direct {p0, p2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v1

    .line 497
    .local v1, "bindingClass":Lbutterknife/internal/BindingClass;
    new-instance v0, Lbutterknife/internal/FieldResourceBinding;

    if-eqz v6, :cond_3

    const-string v8, "getColorStateList"

    :goto_2
    invoke-direct {v0, v5, v7, v8}, Lbutterknife/internal/FieldResourceBinding;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v0, "binding":Lbutterknife/internal/FieldResourceBinding;
    invoke-virtual {v1, v0}, Lbutterknife/internal/BindingClass;->addResource(Lbutterknife/internal/FieldResourceBinding;)V

    .line 501
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    .end local v0    # "binding":Lbutterknife/internal/FieldResourceBinding;
    :cond_3
    const-string v8, "getColor"

    goto :goto_2
.end method

.method private parseResourceDimen(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 12
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 507
    .local v4, "hasError":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 510
    .local v3, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    const/4 v6, 0x0

    .line 511
    .local v6, "isInt":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 512
    .local v2, "elementType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    if-ne v8, v9, :cond_1

    .line 513
    const/4 v6, 0x1

    .line 522
    :cond_0
    :goto_0
    const-class v8, Lbutterknife/BindDimen;

    const-string v9, "fields"

    invoke-direct {p0, v8, v9, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 523
    const-class v8, Lbutterknife/BindDimen;

    invoke-direct {p0, v8, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 525
    if-eqz v4, :cond_2

    .line 539
    :goto_1
    return-void

    .line 514
    :cond_1
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    if-eq v8, v9, :cond_0

    .line 515
    const-string v8, "@%s field type must be \'int\' or \'float\'. (%s.%s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-class v11, Lbutterknife/BindDimen;

    .line 516
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 517
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v11

    aput-object v11, v9, v10

    .line 515
    invoke-direct {p0, p1, v8, v9}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    const/4 v4, 0x1

    goto :goto_0

    .line 530
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "name":Ljava/lang/String;
    const-class v8, Lbutterknife/BindDimen;

    invoke-interface {p1, v8}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lbutterknife/BindDimen;

    invoke-interface {v8}, Lbutterknife/BindDimen;->value()I

    move-result v5

    .line 533
    .local v5, "id":I
    invoke-direct {p0, p2, v3}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v1

    .line 534
    .local v1, "bindingClass":Lbutterknife/internal/BindingClass;
    new-instance v0, Lbutterknife/internal/FieldResourceBinding;

    if-eqz v6, :cond_3

    const-string v8, "getDimensionPixelSize"

    :goto_2
    invoke-direct {v0, v5, v7, v8}, Lbutterknife/internal/FieldResourceBinding;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v0, "binding":Lbutterknife/internal/FieldResourceBinding;
    invoke-virtual {v1, v0}, Lbutterknife/internal/BindingClass;->addResource(Lbutterknife/internal/FieldResourceBinding;)V

    .line 538
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 534
    .end local v0    # "binding":Lbutterknife/internal/FieldResourceBinding;
    :cond_3
    const-string v8, "getDimension"

    goto :goto_2
.end method

.method private parseResourceDrawable(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 10
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 544
    .local v3, "hasError":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 547
    .local v2, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    const-string v6, "android.graphics.drawable.Drawable"

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-interface {v7}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 548
    const-string v6, "@%s field type must be \'Drawable\'. (%s.%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-class v9, Lbutterknife/BindDrawable;

    .line 549
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 550
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    .line 548
    invoke-direct {p0, p1, v6, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    const/4 v3, 0x1

    .line 555
    :cond_0
    const-class v6, Lbutterknife/BindDrawable;

    const-string v7, "fields"

    invoke-direct {p0, v6, v7, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 556
    const-class v6, Lbutterknife/BindDrawable;

    invoke-direct {p0, v6, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 558
    if-eqz v3, :cond_1

    .line 571
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "name":Ljava/lang/String;
    const-class v6, Lbutterknife/BindDrawable;

    invoke-interface {p1, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lbutterknife/BindDrawable;

    invoke-interface {v6}, Lbutterknife/BindDrawable;->value()I

    move-result v4

    .line 566
    .local v4, "id":I
    invoke-direct {p0, p2, v2}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v1

    .line 567
    .local v1, "bindingClass":Lbutterknife/internal/BindingClass;
    new-instance v0, Lbutterknife/internal/FieldResourceBinding;

    const-string v6, "getDrawable"

    invoke-direct {v0, v4, v5, v6}, Lbutterknife/internal/FieldResourceBinding;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v0, "binding":Lbutterknife/internal/FieldResourceBinding;
    invoke-virtual {v1, v0}, Lbutterknife/internal/BindingClass;->addResource(Lbutterknife/internal/FieldResourceBinding;)V

    .line 570
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseResourceInt(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 10
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 576
    .local v3, "hasError":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 579
    .local v2, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    if-eq v6, v7, :cond_0

    .line 580
    const-string v6, "@%s field type must be \'int\'. (%s.%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-class v9, Lbutterknife/BindInt;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 581
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    .line 580
    invoke-direct {p0, p1, v6, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    const/4 v3, 0x1

    .line 586
    :cond_0
    const-class v6, Lbutterknife/BindInt;

    const-string v7, "fields"

    invoke-direct {p0, v6, v7, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 587
    const-class v6, Lbutterknife/BindInt;

    invoke-direct {p0, v6, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 589
    if-eqz v3, :cond_1

    .line 602
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "name":Ljava/lang/String;
    const-class v6, Lbutterknife/BindInt;

    invoke-interface {p1, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lbutterknife/BindInt;

    invoke-interface {v6}, Lbutterknife/BindInt;->value()I

    move-result v4

    .line 597
    .local v4, "id":I
    invoke-direct {p0, p2, v2}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v1

    .line 598
    .local v1, "bindingClass":Lbutterknife/internal/BindingClass;
    new-instance v0, Lbutterknife/internal/FieldResourceBinding;

    const-string v6, "getInteger"

    invoke-direct {v0, v4, v5, v6}, Lbutterknife/internal/FieldResourceBinding;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 599
    .local v0, "binding":Lbutterknife/internal/FieldResourceBinding;
    invoke-virtual {v1, v0}, Lbutterknife/internal/BindingClass;->addResource(Lbutterknife/internal/FieldResourceBinding;)V

    .line 601
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseResourceString(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 10
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/BindingClass;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p2, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .local p3, "erasedTargetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 607
    .local v3, "hasError":Z
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 610
    .local v2, "enclosingElement":Ljavax/lang/model/element/TypeElement;
    const-string v6, "java.lang.String"

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-interface {v7}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 611
    const-string v6, "@%s field type must be \'String\'. (%s.%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-class v9, Lbutterknife/BindString;

    .line 612
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 613
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v9

    aput-object v9, v7, v8

    .line 611
    invoke-direct {p0, p1, v6, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    const/4 v3, 0x1

    .line 618
    :cond_0
    const-class v6, Lbutterknife/BindString;

    const-string v7, "fields"

    invoke-direct {p0, v6, v7, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isInaccessibleViaGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 619
    const-class v6, Lbutterknife/BindString;

    invoke-direct {p0, v6, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 621
    if-eqz v3, :cond_1

    .line 634
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "name":Ljava/lang/String;
    const-class v6, Lbutterknife/BindString;

    invoke-interface {p1, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lbutterknife/BindString;

    invoke-interface {v6}, Lbutterknife/BindString;->value()I

    move-result v4

    .line 629
    .local v4, "id":I
    invoke-direct {p0, p2, v2}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/BindingClass;

    move-result-object v1

    .line 630
    .local v1, "bindingClass":Lbutterknife/internal/BindingClass;
    new-instance v0, Lbutterknife/internal/FieldResourceBinding;

    const-string v6, "getString"

    invoke-direct {v0, v4, v5, v6}, Lbutterknife/internal/FieldResourceBinding;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v0, "binding":Lbutterknife/internal/FieldResourceBinding;
    invoke-virtual {v1, v0}, Lbutterknife/internal/BindingClass;->addResource(Lbutterknife/internal/FieldResourceBinding;)V

    .line 633
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 103
    .local v1, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v2, Lbutterknife/Bind;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v2, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 106
    .local v0, "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "listener":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    const-class v2, Lbutterknife/BindBool;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    const-class v2, Lbutterknife/BindColor;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    const-class v2, Lbutterknife/BindDimen;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    const-class v2, Lbutterknife/BindDrawable;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const-class v2, Lbutterknife/BindInt;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    const-class v2, Lbutterknife/BindString;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    return-object v1
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 957
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 95
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 96
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 97
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->filer:Ljavax/annotation/processing/Filer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 12
    .param p2, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "elements":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    invoke-direct {p0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->findAndParseTargets(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;

    move-result-object v4

    .line 122
    .local v4, "targetClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/TypeElement;

    .line 124
    .local v5, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/BindingClass;

    .line 127
    .local v0, "bindingClass":Lbutterknife/internal/BindingClass;
    :try_start_0
    iget-object v8, p0, Lbutterknife/internal/ButterKnifeProcessor;->filer:Ljavax/annotation/processing/Filer;

    invoke-virtual {v0}, Lbutterknife/internal/BindingClass;->getFqcn()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/lang/model/element/Element;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-interface {v8, v9, v10}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v3

    .line 128
    .local v3, "jfo":Ljavax/tools/JavaFileObject;
    invoke-interface {v3}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v6

    .line 129
    .local v6, "writer":Ljava/io/Writer;
    invoke-virtual {v0}, Lbutterknife/internal/BindingClass;->brewJava()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 131
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v3    # "jfo":Ljavax/tools/JavaFileObject;
    .end local v6    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "Unable to write view binder for type %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    .line 134
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 133
    invoke-direct {p0, v5, v8, v9}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0    # "bindingClass":Lbutterknife/internal/BindingClass;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/TypeElement;Lbutterknife/internal/BindingClass;>;"
    .end local v5    # "typeElement":Ljavax/lang/model/element/TypeElement;
    :cond_0
    const/4 v7, 0x1

    return v7
.end method
