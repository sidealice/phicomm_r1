.class final Lbutterknife/internal/BindingClass;
.super Ljava/lang/Object;
.source "BindingClass.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final classPackage:Ljava/lang/String;

.field private final collectionBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/FieldCollectionViewBinding;",
            "[I>;"
        }
    .end annotation
.end field

.field private parentViewBinder:Ljava/lang/String;

.field private final resourceBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbutterknife/internal/FieldResourceBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final targetClass:Ljava/lang/String;

.field private final viewIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbutterknife/internal/ViewBindings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "classPackage"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "targetClass"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/BindingClass;->collectionBindings:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/BindingClass;->resourceBindings:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lbutterknife/internal/BindingClass;->classPackage:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lbutterknife/internal/BindingClass;->className:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lbutterknife/internal/BindingClass;->targetClass:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private emitBindMethod(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 113
    const-string v3, "  @Override "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "public void bind(final Finder finder, final T target, Object source) {\n"

    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->parentViewBinder:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 118
    const-string v3, "    super.bind(finder, target, source);\n\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbutterknife/internal/BindingClass;->collectionBindings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    :cond_1
    const-string v3, "    View view;\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/ViewBindings;

    .line 127
    .local v1, "bindings":Lbutterknife/internal/ViewBindings;
    invoke-direct {p0, p1, v1}, Lbutterknife/internal/BindingClass;->emitViewBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewBindings;)V

    goto :goto_0

    .line 131
    .end local v1    # "bindings":Lbutterknife/internal/ViewBindings;
    :cond_2
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->collectionBindings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lbutterknife/internal/FieldCollectionViewBinding;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/internal/FieldCollectionViewBinding;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {p0, p1, v3, v4}, Lbutterknife/internal/BindingClass;->emitCollectionBinding(Ljava/lang/StringBuilder;Lbutterknife/internal/FieldCollectionViewBinding;[I)V

    goto :goto_1

    .line 136
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lbutterknife/internal/FieldCollectionViewBinding;[I>;"
    :cond_3
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->resourceBindings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 137
    const-string v3, "    Resources res = finder.getContext(source).getResources();\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->resourceBindings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/FieldResourceBinding;

    .line 140
    .local v0, "binding":Lbutterknife/internal/FieldResourceBinding;
    const-string v4, "    target."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 141
    invoke-virtual {v0}, Lbutterknife/internal/FieldResourceBinding;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = res."

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    invoke-virtual {v0}, Lbutterknife/internal/FieldResourceBinding;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x28

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 145
    invoke-virtual {v0}, Lbutterknife/internal/FieldResourceBinding;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");\n"

    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 150
    .end local v0    # "binding":Lbutterknife/internal/FieldResourceBinding;
    :cond_4
    const-string v3, "  }\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    return-void
.end method

.method private emitCollectionBinding(Ljava/lang/StringBuilder;Lbutterknife/internal/FieldCollectionViewBinding;[I)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "binding"    # Lbutterknife/internal/FieldCollectionViewBinding;
    .param p3, "ids"    # [I

    .prologue
    .line 155
    const-string v1, "    target."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lbutterknife/internal/FieldCollectionViewBinding;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    sget-object v1, Lbutterknife/internal/BindingClass$1;->$SwitchMap$butterknife$internal$FieldCollectionViewBinding$Kind:[I

    invoke-virtual {p2}, Lbutterknife/internal/FieldCollectionViewBinding;->getKind()Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lbutterknife/internal/FieldCollectionViewBinding$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 165
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown kind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lbutterknife/internal/FieldCollectionViewBinding;->getKind()Lbutterknife/internal/FieldCollectionViewBinding$Kind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :pswitch_0
    const-string v1, "Finder.arrayOf("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 169
    if-lez v0, :cond_0

    .line 170
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    const-string v1, "\n        finder.<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {p2}, Lbutterknife/internal/FieldCollectionViewBinding;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {p2}, Lbutterknife/internal/FieldCollectionViewBinding;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "findRequiredView"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(source, "

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v0

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v1}, Lbutterknife/internal/BindingClass;->emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 180
    const-string v1, "\")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "i":I
    :pswitch_1
    const-string v1, "Finder.listOf("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "findOptionalView"

    goto :goto_2

    .line 183
    :cond_2
    const-string v1, "\n    );\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private emitFieldBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewBindings;)V
    .locals 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "bindings"    # Lbutterknife/internal/ViewBindings;

    .prologue
    .line 211
    invoke-virtual {p2}, Lbutterknife/internal/ViewBindings;->getFieldBindings()Ljava/util/Collection;

    move-result-object v1

    .line 212
    .local v1, "fieldBindings":Ljava/util/Collection;, "Ljava/util/Collection<Lbutterknife/internal/FieldViewBinding;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/FieldViewBinding;

    .line 217
    .local v0, "fieldBinding":Lbutterknife/internal/FieldViewBinding;
    const-string v3, "    target."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    invoke-virtual {v0}, Lbutterknife/internal/FieldViewBinding;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Lbutterknife/internal/FieldViewBinding;->requiresCast()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    const-string v3, "finder.castView(view"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-virtual {p2}, Lbutterknife/internal/ViewBindings;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \""

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {p1, v1}, Lbutterknife/internal/BindingClass;->emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 226
    const-string v3, "\");\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :cond_2
    const-string v3, "view;\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 5
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<+",
            "Lbutterknife/internal/ViewBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<+Lbutterknife/internal/ViewBinding;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 420
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lbutterknife/internal/ViewBinding;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 431
    if-eqz v1, :cond_0

    .line 432
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_0
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_1

    .line 435
    const-string v3, "and "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/internal/ViewBinding;

    invoke-interface {v3}, Lbutterknife/internal/ViewBinding;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "count":I
    .end local v1    # "i":I
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/internal/ViewBinding;

    invoke-interface {v3}, Lbutterknife/internal/ViewBinding;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_2
    :goto_1
    return-void

    .line 425
    :pswitch_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/internal/ViewBinding;

    invoke-interface {v3}, Lbutterknife/internal/ViewBinding;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    .line 426
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 427
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/internal/ViewBinding;

    invoke-interface {v3}, Lbutterknife/internal/ViewBinding;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private emitMethodBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewBindings;)V
    .locals 25
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "bindings"    # Lbutterknife/internal/ViewBindings;

    .prologue
    .line 234
    .line 235
    invoke-virtual/range {p2 .. p2}, Lbutterknife/internal/ViewBindings;->getMethodBindings()Ljava/util/Map;

    move-result-object v3

    .line 236
    .local v3, "classMethodBindings":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerClass;Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v6, ""

    .line 243
    .local v6, "extraIndent":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lbutterknife/internal/ViewBindings;->getRequiredBindings()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v16

    .line 244
    .local v16, "needsNullChecked":Z
    if-eqz v16, :cond_2

    .line 245
    const-string v21, "    if (view != null) {\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v6, "  "

    .line 250
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 251
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lbutterknife/internal/ListenerClass;Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbutterknife/internal/ListenerClass;

    .line 252
    .local v10, "listener":Lbutterknife/internal/ListenerClass;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 255
    .local v14, "methodBindings":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    const-string v22, "android.view.View"

    invoke-interface {v10}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    const/4 v15, 0x1

    .line 256
    .local v15, "needsCast":Z
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "    "

    .line 257
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    if-eqz v15, :cond_7

    .line 259
    const-string v22, "(("

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v10}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface {v10}, Lbutterknife/internal/ListenerClass;->genericArguments()I

    move-result v22

    if-lez v22, :cond_6

    .line 261
    const/16 v22, 0x3c

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface {v10}, Lbutterknife/internal/ListenerClass;->genericArguments()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_5

    .line 263
    if-lez v8, :cond_3

    .line 264
    const-string v22, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_3
    const/16 v22, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 255
    .end local v8    # "i":I
    .end local v15    # "needsCast":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 268
    .restart local v8    # "i":I
    .restart local v15    # "needsCast":Z
    :cond_5
    const/16 v22, 0x3e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    .end local v8    # "i":I
    :cond_6
    const-string v22, ") "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_7
    const-string v22, "view"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    if-eqz v15, :cond_8

    .line 274
    const/16 v22, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_8
    const/16 v22, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 277
    invoke-interface {v10}, Lbutterknife/internal/ListenerClass;->setter()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "(\n"

    .line 278
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "      new "

    .line 282
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 283
    invoke-interface {v10}, Lbutterknife/internal/ListenerClass;->type()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "() {\n"

    .line 284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {v10}, Lbutterknife/internal/BindingClass;->getListenerMethods(Lbutterknife/internal/ListenerClass;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lbutterknife/internal/ListenerMethod;

    .line 288
    .local v13, "method":Lbutterknife/internal/ListenerMethod;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        @Override public "

    .line 289
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 290
    invoke-interface {v13}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x20

    .line 291
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 292
    invoke-interface {v13}, Lbutterknife/internal/ListenerMethod;->name()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "(\n"

    .line 293
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface {v13}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v18

    .line 297
    .local v18, "parameterTypes":[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move-object/from16 v0, v18

    array-length v4, v0

    .local v4, "count":I
    :goto_5
    if-ge v8, v4, :cond_a

    .line 298
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "          "

    .line 299
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v18, v8

    .line 300
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " p"

    .line 301
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 302
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v23

    if-ge v8, v0, :cond_9

    .line 304
    const/16 v23, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_9
    const/16 v23, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 310
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        ) {\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "          "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v23, "void"

    invoke-interface {v13}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    const/4 v7, 0x1

    .line 315
    .local v7, "hasReturnType":Z
    :goto_6
    if-eqz v7, :cond_b

    .line 316
    const-string v23, "return "

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_b
    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 320
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    .line 321
    .local v20, "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 323
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/MethodViewBinding;>;"
    :cond_c
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 324
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/MethodViewBinding;

    .line 325
    .local v2, "binding":Lbutterknife/internal/MethodViewBinding;
    const-string v23, "target."

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v2}, Lbutterknife/internal/MethodViewBinding;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x28

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v2}, Lbutterknife/internal/MethodViewBinding;->getParameters()Ljava/util/List;

    move-result-object v19

    .line 327
    .local v19, "parameters":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/Parameter;>;"
    invoke-interface {v13}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v11

    .line 328
    .local v11, "listenerParameters":[Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    :goto_8
    if-ge v8, v4, :cond_10

    .line 329
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lbutterknife/internal/Parameter;

    .line 330
    .local v17, "parameter":Lbutterknife/internal/Parameter;
    invoke-virtual/range {v17 .. v17}, Lbutterknife/internal/Parameter;->getListenerPosition()I

    move-result v12

    .line 332
    .local v12, "listenerPosition":I
    aget-object v23, v11, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lbutterknife/internal/Parameter;->requiresCast(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 333
    const-string v23, "finder.<"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 334
    invoke-virtual/range {v17 .. v17}, Lbutterknife/internal/Parameter;->getType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ">castParam(p"

    .line 335
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 336
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", \""

    .line 337
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 338
    invoke-interface {v13}, Lbutterknife/internal/ListenerMethod;->name()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\", "

    .line 339
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 340
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", \""

    .line 341
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 342
    invoke-virtual {v2}, Lbutterknife/internal/MethodViewBinding;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\", "

    .line 343
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 344
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    .line 345
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :goto_9
    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v23

    if-ge v8, v0, :cond_d

    .line 351
    const-string v23, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 314
    .end local v2    # "binding":Lbutterknife/internal/MethodViewBinding;
    .end local v7    # "hasReturnType":Z
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/MethodViewBinding;>;"
    .end local v11    # "listenerParameters":[Ljava/lang/String;
    .end local v12    # "listenerPosition":I
    .end local v17    # "parameter":Lbutterknife/internal/Parameter;
    .end local v19    # "parameters":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/Parameter;>;"
    .end local v20    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 347
    .restart local v2    # "binding":Lbutterknife/internal/MethodViewBinding;
    .restart local v7    # "hasReturnType":Z
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/MethodViewBinding;>;"
    .restart local v11    # "listenerParameters":[Ljava/lang/String;
    .restart local v12    # "listenerPosition":I
    .restart local v17    # "parameter":Lbutterknife/internal/Parameter;
    .restart local v19    # "parameters":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/Parameter;>;"
    .restart local v20    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    :cond_f
    const/16 v23, 0x70

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 354
    .end local v12    # "listenerPosition":I
    .end local v17    # "parameter":Lbutterknife/internal/Parameter;
    :cond_10
    const-string v23, ");"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 356
    const-string v23, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "          "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 359
    .end local v2    # "binding":Lbutterknife/internal/MethodViewBinding;
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lbutterknife/internal/MethodViewBinding;>;"
    .end local v11    # "listenerParameters":[Ljava/lang/String;
    .end local v19    # "parameters":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/Parameter;>;"
    .end local v20    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    :cond_11
    if-eqz v7, :cond_12

    .line 360
    invoke-interface {v13}, Lbutterknife/internal/ListenerMethod;->defaultReturn()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x3b

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_12
    const/16 v23, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        }\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 369
    .end local v4    # "count":I
    .end local v7    # "hasReturnType":Z
    .end local v8    # "i":I
    .end local v13    # "method":Lbutterknife/internal/ListenerMethod;
    .end local v18    # "parameterTypes":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "      });\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 372
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lbutterknife/internal/ListenerClass;Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;>;"
    .end local v10    # "listener":Lbutterknife/internal/ListenerClass;
    .end local v14    # "methodBindings":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    .end local v15    # "needsCast":Z
    :cond_14
    if-eqz v16, :cond_0

    .line 373
    const-string v21, "    }\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private emitUnbindMethod(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 402
    const-string v3, "  @Override public void unbind(T target) {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->parentViewBinder:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 404
    const-string v3, "    super.unbind(target);\n\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_0
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewBindings;

    .line 407
    .local v0, "bindings":Lbutterknife/internal/ViewBindings;
    invoke-virtual {v0}, Lbutterknife/internal/ViewBindings;->getFieldBindings()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/FieldViewBinding;

    .line 408
    .local v1, "fieldBinding":Lbutterknife/internal/FieldViewBinding;
    const-string v5, "    target."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lbutterknife/internal/FieldViewBinding;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = null;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 411
    .end local v0    # "bindings":Lbutterknife/internal/ViewBindings;
    .end local v1    # "fieldBinding":Lbutterknife/internal/FieldViewBinding;
    :cond_2
    iget-object v3, p0, Lbutterknife/internal/BindingClass;->collectionBindings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/FieldCollectionViewBinding;

    .line 412
    .local v2, "fieldCollectionBinding":Lbutterknife/internal/FieldCollectionViewBinding;
    const-string v4, "    target."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lbutterknife/internal/FieldCollectionViewBinding;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = null;\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 414
    .end local v2    # "fieldCollectionBinding":Lbutterknife/internal/FieldCollectionViewBinding;
    :cond_3
    const-string v3, "  }\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    return-void
.end method

.method private emitViewBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewBindings;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "bindings"    # Lbutterknife/internal/ViewBindings;

    .prologue
    .line 187
    const-string v1, "    view = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p2}, Lbutterknife/internal/ViewBindings;->getRequiredBindings()Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "requiredViewBindings":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/ViewBinding;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "finder.findOptionalView(source, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Lbutterknife/internal/ViewBindings;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", null);\n"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :goto_0
    invoke-direct {p0, p1, p2}, Lbutterknife/internal/BindingClass;->emitFieldBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewBindings;)V

    .line 207
    invoke-direct {p0, p1, p2}, Lbutterknife/internal/BindingClass;->emitMethodBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewBindings;)V

    .line 208
    return-void

    .line 195
    :cond_0
    invoke-virtual {p2}, Lbutterknife/internal/ViewBindings;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 196
    const-string v1, "target;\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :cond_1
    const-string v1, "finder.findRequiredView(source, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-virtual {p2}, Lbutterknife/internal/ViewBindings;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p1, v0}, Lbutterknife/internal/BindingClass;->emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 202
    const-string v1, "\");\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static getListenerMethods(Lbutterknife/internal/ListenerClass;)Ljava/util/List;
    .locals 11
    .param p0, "listener"    # Lbutterknife/internal/ListenerClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/internal/ListenerClass;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbutterknife/internal/ListenerMethod;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 378
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_1

    .line 379
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 395
    :cond_0
    return-object v5

    .line 383
    :cond_1
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v5, "methods":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/ListenerMethod;>;"
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->callbacks()Ljava/lang/Class;

    move-result-object v2

    .line 385
    .local v2, "callbacks":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v6, v7

    .line 386
    .local v1, "callbackMethod":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 387
    .local v0, "callbackField":Ljava/lang/reflect/Field;
    const-class v9, Lbutterknife/internal/ListenerMethod;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lbutterknife/internal/ListenerMethod;

    .line 388
    .local v4, "method":Lbutterknife/internal/ListenerMethod;
    if-nez v4, :cond_2

    .line 389
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "@%s\'s %s.%s missing @%s annotation."

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 390
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 391
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Lbutterknife/internal/ListenerMethod;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 389
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "callbackField":Ljava/lang/reflect/Field;
    .end local v1    # "callbackMethod":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "callbacks":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    .end local v4    # "method":Lbutterknife/internal/ListenerMethod;
    .end local v5    # "methods":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/ListenerMethod;>;"
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 393
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "callbackField":Ljava/lang/reflect/Field;
    .restart local v1    # "callbackMethod":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .restart local v2    # "callbacks":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    .restart local v4    # "method":Lbutterknife/internal/ListenerMethod;
    .restart local v5    # "methods":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/ListenerMethod;>;"
    :cond_2
    :try_start_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private getOrCreateViewBindings(I)Lbutterknife/internal/ViewBindings;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewBindings;

    .line 66
    .local v0, "viewId":Lbutterknife/internal/ViewBindings;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lbutterknife/internal/ViewBindings;

    .end local v0    # "viewId":Lbutterknife/internal/ViewBindings;
    invoke-direct {v0, p1}, Lbutterknife/internal/ViewBindings;-><init>(I)V

    .line 68
    .restart local v0    # "viewId":Lbutterknife/internal/ViewBindings;
    iget-object v1, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-object v0
.end method


# virtual methods
.method addField(ILbutterknife/internal/FieldViewBinding;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "binding"    # Lbutterknife/internal/FieldViewBinding;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lbutterknife/internal/BindingClass;->getOrCreateViewBindings(I)Lbutterknife/internal/ViewBindings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbutterknife/internal/ViewBindings;->addFieldBinding(Lbutterknife/internal/FieldViewBinding;)V

    .line 35
    return-void
.end method

.method addFieldCollection([ILbutterknife/internal/FieldCollectionViewBinding;)V
    .locals 1
    .param p1, "ids"    # [I
    .param p2, "binding"    # Lbutterknife/internal/FieldCollectionViewBinding;

    .prologue
    .line 38
    iget-object v0, p0, Lbutterknife/internal/BindingClass;->collectionBindings:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method addMethod(ILbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/MethodViewBinding;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "listener"    # Lbutterknife/internal/ListenerClass;
    .param p3, "method"    # Lbutterknife/internal/ListenerMethod;
    .param p4, "binding"    # Lbutterknife/internal/MethodViewBinding;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lbutterknife/internal/BindingClass;->getOrCreateViewBindings(I)Lbutterknife/internal/ViewBindings;

    move-result-object v0

    .line 44
    .local v0, "viewBindings":Lbutterknife/internal/ViewBindings;
    invoke-virtual {v0, p2, p3}, Lbutterknife/internal/ViewBindings;->hasMethodBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "void"

    .line 45
    invoke-interface {p3}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1

    .line 48
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lbutterknife/internal/ViewBindings;->addMethodBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/MethodViewBinding;)V

    .line 49
    const/4 v1, 0x1

    goto :goto_0
.end method

.method addResource(Lbutterknife/internal/FieldResourceBinding;)V
    .locals 1
    .param p1, "binding"    # Lbutterknife/internal/FieldResourceBinding;

    .prologue
    .line 53
    iget-object v0, p0, Lbutterknife/internal/BindingClass;->resourceBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method brewJava()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "// Generated code from Butter Knife. Do not modify!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/BindingClass;->classPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lbutterknife/internal/BindingClass;->resourceBindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const-string v1, "import android.content.res.Resources;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    iget-object v1, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbutterknife/internal/BindingClass;->collectionBindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    :cond_1
    const-string v1, "import android.view.View;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    const-string v1, "import butterknife.ButterKnife.Finder;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lbutterknife/internal/BindingClass;->parentViewBinder:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 90
    const-string v1, "import butterknife.ButterKnife.ViewBinder;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "public class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/BindingClass;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "<T extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/BindingClass;->targetClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lbutterknife/internal/BindingClass;->parentViewBinder:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 98
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/BindingClass;->parentViewBinder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<T>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {p0, v0}, Lbutterknife/internal/BindingClass;->emitBindMethod(Ljava/lang/StringBuilder;)V

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {p0, v0}, Lbutterknife/internal/BindingClass;->emitUnbindMethod(Ljava/lang/StringBuilder;)V

    .line 108
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_4
    const-string v1, " implements ViewBinder<T>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getFqcn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbutterknife/internal/BindingClass;->classPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/BindingClass;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewBinding(I)Lbutterknife/internal/ViewBindings;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lbutterknife/internal/BindingClass;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewBindings;

    return-object v0
.end method

.method setParentViewBinder(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentViewBinder"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lbutterknife/internal/BindingClass;->parentViewBinder:Ljava/lang/String;

    .line 58
    return-void
.end method
