.class Lcom/deltaid/cameratest/CameraTestMainActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deltaid/cameratest/CameraTestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deltaid/cameratest/CameraTestMainActivity;


# direct methods
.method constructor <init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v2, v2, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v2, v2, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v0, v0, v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    aput v0, v1, v2

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/deltaid/iris_demo/IrisMobileDevice;->testExposure(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    aget v1, v1, v2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    aget v0, v0, v2

    goto :goto_0
.end method
