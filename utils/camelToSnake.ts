export const camelToSnake = (input: string) => {
  const upperChars = input.match(/([A-Z])/g);
  if (!upperChars) {
    return input;
  }

  let output = "";

  for (let i = 0; i < input.length; i += 1) {
    const letter = input[i];
    const lowered = input[i].toLowerCase();

    if (letter !== lowered && i !== 0) {
      output += `-${lowered}`;
    } else {
      output += lowered;
    }
  }

  return output;
};
